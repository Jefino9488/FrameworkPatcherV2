#!/usr/bin/env bash
# helper.sh - common functions for DSV A15 framework patcher
# Usage: source ./helper.sh
# Exposes: init_env, ensure_tools, decompile_jar, recompile_jar, backup_original_jar,
#          add_static_return_patch, patch_return_void_method,
#          modify_invoke_custom_methods, create_magisk_module, find_smali_method_file
#
# Designed for use in CI / GitHub workflow. Functions accept explicit decompile_dir
# where appropriate so scripts can be called against multiple jars.

# Uncomment to make the script fail fast during development
# set -o errexit -o nounset -o pipefail

# ------------------------------
# Configuration / initialization
# ------------------------------
init_env() {
    # Allow overriding from environment before calling init_env
    : "${TOOLS_DIR:=${PWD}/tools}"
    : "${WORK_DIR:=${PWD}}"
    : "${BACKUP_DIR:=${WORK_DIR}/backup}"
    : "${MAGISK_TEMPLATE_DIR:=magisk_module}"   # template dir for create_magisk_module
    mkdir -p "$BACKUP_DIR"
}

# Call this at the start of scripts after sourcing helper.sh
# e.g. init_env
# ------------------------------
# Logging helpers
# ------------------------------
log()  { printf "%s\n" "[INFO] $*" >&2; }
warn() { printf "%s\n" "[WARN] $*" >&2; }
err()  { printf "%s\n" "[ERROR] $*" >&2; }

# ------------------------------
# Tool checks
# ------------------------------
ensure_tools() {
    # Checks for java, apktool.jar and 7z (optional)
    if ! command -v java >/dev/null 2>&1; then
        err "java not found in PATH"
        return 1
    fi

    if [ ! -f "${TOOLS_DIR}/apktool.jar" ]; then
        err "apktool.jar not found at ${TOOLS_DIR}/apktool.jar"
        return 1
    fi

    if ! command -v 7z >/dev/null 2>&1; then
        warn "7z not found in PATH — create_magisk_module will try to use zip if available"
    fi

    return 0
}

# ------------------------------
# Backup original jar (META-INF + res)
# ------------------------------
backup_original_jar() {
    local jar_file="$1"
    local base_name
    base_name=$(basename "$jar_file" .jar)
    mkdir -p "$BACKUP_DIR/$base_name"
    # Save META-INF and res if present (silently ignore missing)
    unzip -o "$jar_file" "META-INF/*" "res/*" -d "$BACKUP_DIR/$base_name" >/dev/null 2>&1 || true
    # Also copy whole jar for safety
    cp -a "$jar_file" "$BACKUP_DIR/${base_name}.orig.jar"
    log "Backed up $jar_file -> $BACKUP_DIR/$base_name"
}

# ------------------------------
# Decompile / Recompile wrappers
# ------------------------------
decompile_jar() {
    local jar_file="$1"
    local base_name
    base_name=$(basename "$jar_file" .jar)
    local output_dir="${WORK_DIR}/${base_name}_decompile"

    log "Decompiling $jar_file -> $output_dir (apktool)"
    rm -rf "$output_dir" "$base_name" >/dev/null 2>&1 || true
    mkdir -p "$output_dir"

    backup_original_jar "$jar_file"

    java -jar "${TOOLS_DIR}/apktool.jar" d -q -f "$jar_file" -o "$output_dir" || {
        err "apktool failed to decompile $jar_file"
        return 1
    }

    # copy META-INF and res into unknown/ (keeps resources for later)
    mkdir -p "$output_dir/unknown"
    cp -r "$BACKUP_DIR/$base_name/res" "$output_dir/unknown/" 2>/dev/null || true
    cp -r "$BACKUP_DIR/$base_name/META-INF" "$output_dir/unknown/" 2>/dev/null || true

    log "Decompile finished: $output_dir"
    echo "$output_dir"
}

recompile_jar() {
    local jar_file="$1"      # original jar file path (used only for name)
    local base_name
    base_name=$(basename "$jar_file" .jar)
    local output_dir="${WORK_DIR}/${base_name}_decompile"
    local patched_jar="${base_name}_patched.jar"

    log "Recompiling $output_dir -> $patched_jar"
    if [ ! -d "$output_dir" ]; then
        err "Recompile failed: decompile dir not found: $output_dir"
        return 1
    fi

    java -jar "${TOOLS_DIR}/apktool.jar" b -q -f "$output_dir" -o "$patched_jar" || {
        err "apktool build failed for $output_dir"
        return 1
    }

    log "Created patched JAR: $patched_jar"
    echo "$patched_jar"
}

# ------------------------------
# Utility: find smali file that contains method
# ------------------------------
find_smali_method_file() {
    local decompile_dir="$1"
    local method="$2"
    # returns first match (stdout)
    find "$decompile_dir" -type f -name "*.smali" -print0 \
      | xargs -0 grep -l -- ".method" 2>/dev/null \
      | xargs -r -I{} sh -c "grep -q \"[[:space:]]*\\.method.*${method}\" \"{}\" && printf '%s\n' \"{}\"" \
      | head -n1
}

# ------------------------------
# Patching helpers (work on smali files)
# ------------------------------
add_static_return_patch() {
    local method="$1"
    local ret_val="$2"           # expect hex nibble w/o 0x OR decimal (we assume hex nibble for const/4 usage)
    local decompile_dir="$3"
    local file

    [ -z "$method" ] || true
    [ -z "$decompile_dir" ] && { err "add_static_return_patch: missing decompile_dir"; return 1; }

    file=$(find_smali_method_file "$decompile_dir" "$method")
    [ -z "$file" ] && { warn "Method $method not found in $decompile_dir"; return 0; }

    local start
    start=$(grep -n "^[[:space:]]*\.method.* ${method}" "$file" | cut -d: -f1 | head -n1)
    [ -z "$start" ] && { warn "Method $method start not found"; return 0; }

    local total_lines end=0 i="$start" line
    total_lines=$(wc -l < "$file")
    while [ "$i" -le "$total_lines" ]; do
        line=$(sed -n "${i}p" "$file")
        [[ "$line" == *".end method"* ]] && { end="$i"; break; }
        i=$((i + 1))
    done

    [ "$end" -eq 0 ] && { warn "End not found for $method in $file"; return 0; }

    local method_head
    method_head=$(sed -n "${start}p" "$file")
    method_head_escaped=$(printf "%s\n" "$method_head" | sed 's/\\/\\\\/g')

    # Replace method body with a simple const/return
    sed -i "${start},${end}c\\
$method_head_escaped\\
    .registers 8\\
    const/4 v0, 0x${ret_val}\\
    return v0\\
.end method" "$file"

    log "Patched $method in $file to return 0x${ret_val}"
}

patch_return_void_method() {
    local method="$1"
    local decompile_dir="$2"
    local file

    [ -z "$decompile_dir" ] && { err "patch_return_void_method: missing decompile_dir"; return 1; }

    file=$(find_smali_method_file "$decompile_dir" "$method")
    [ -z "$file" ] && { warn "Method $method not found in $decompile_dir"; return 0; }

    local start
    start=$(grep -n "^[[:space:]]*\.method.* ${method}" "$file" | cut -d: -f1 | head -n1)
    [ -z "$start" ] && { warn "Method $method start not found"; return 0; }

    local total_lines end=0 i="$start" line
    total_lines=$(wc -l < "$file")
    while [ "$i" -le "$total_lines" ]; do
        line=$(sed -n "${i}p" "$file")
        [[ "$line" == *".end method"* ]] && { end="$i"; break; }
        i=$((i + 1))
    done

    [ "$end" -eq 0 ] && { warn "Method $method end not found"; return 0; }

    local method_head
    method_head=$(sed -n "${start}p" "$file")
    method_head_escaped=$(printf "%s\n" "$method_head" | sed 's/\\/\\\\/g')

    sed -i "${start},${end}c\\
$method_head_escaped\\
    .registers 8\\
    return-void\\
.end method" "$file"

    log "Patched $method in $file to return-void"
}

modify_invoke_custom_methods() {
    local decompile_dir="$1"
    echo "Checking for invoke-custom in $decompile_dir..."

    # Use find with + instead of \; to batch files and suppress all grep errors
    local smali_files
    smali_files=$(find "$decompile_dir" -type f -name "*.smali" -print0 2>/dev/null | xargs -0 grep -l "invoke-custom" 2>/dev/null || true)

    [ -z "$smali_files" ] && { log "No invoke-custom found"; return 0; }

    local count=0
    for smali_file in $smali_files; do
        # Skip if file doesn't exist (extra safety check)
        [ ! -f "$smali_file" ] && continue

        count=$((count + 1))

        # equals
        sed -i "/.method.*equals(/,/^.end method$/ {
            /^    .registers/c\\    .registers 2
            /^    invoke-custom/d
            /^    move-result/d
            /^    return/c\\    const/4 v0, 0x0\\n\\n    return v0
        }" "$smali_file" 2>/dev/null || true

        # hashCode
        sed -i "/.method.*hashCode(/,/^.end method$/ {
            /^    .registers/c\\    .registers 2
            /^    invoke-custom/d
            /^    move-result/d
            /^    return/c\\    const/4 v0, 0x0\\n\\n    return v0
        }" "$smali_file" 2>/dev/null || true

        # toString
        sed -i "/.method.*toString(/,/^.end method$/ {
            s/^[[:space:]]*\\.registers.*/    .registers 1/
            /^    invoke-custom/d
            /^    move-result.*/d
            /^    return.*/c\\    const/4 v0, 0x0\\n\\n    return-object v0
        }" "$smali_file" 2>/dev/null || true
    done

    if [ "$count" -gt 0 ]; then
        log "Modified $count files with invoke-custom"
    else
        log "No invoke-custom found"
    fi
}

# ------------------------------
# Magisk module creation
# ------------------------------
create_magisk_module() {
    local api_level="$1"
    local device_name="$2"
    local version_name="$3"

    log "Creating Magisk module for $device_name (v$version_name)"

    local build_dir="build_module"
    rm -rf "$build_dir"
    cp -r "$MAGISK_TEMPLATE_DIR" "$build_dir" || {
        err "Magisk template not found: $MAGISK_TEMPLATE_DIR"
        return 1
    }

    mkdir -p "$build_dir/system/framework"
    mkdir -p "$build_dir/system/system_ext/framework"

    # copy patched files (if present in cwd)
    [ -f "framework_patched.jar" ] && cp "framework_patched.jar" "$build_dir/system/framework/framework.jar"
    [ -f "services_patched.jar" ] && cp "services_patched.jar" "$build_dir/system/framework/services.jar"
    [ -f "miui-services_patched.jar" ] && cp "miui-services_patched.jar" "$build_dir/system/system_ext/framework/miui-services.jar"

    # edit module.prop if exists
    local module_prop="$build_dir/module.prop"
    if [ -f "$module_prop" ]; then
        sed -i "s/^version=.*/version=$version_name/" "$module_prop" || true
        sed -i "s/^versionCode=.*/versionCode=$version_name/" "$module_prop" || true
    fi

    local safe_version
    safe_version=$(printf "%s" "$version_name" | sed 's/[. ]/-/g')
    local zip_name="Framework-Patcher-${device_name}-${safe_version}.zip"

    if command -v 7z >/dev/null 2>&1; then
        (cd "$build_dir" && 7z a -tzip "../$zip_name" "*" > /dev/null) || {
            err "7z failed to create $zip_name"
            return 1
        }
    elif command -v zip >/dev/null 2>&1; then
        (cd "$build_dir" && zip -r "../$zip_name" . > /dev/null) || {
            err "zip failed to create $zip_name"
            return 1
        }
    else
        err "No archiver found (7z or zip). Install one to create module archive."
        return 1
    fi

    log "Created Magisk module: $zip_name"
    echo "$zip_name"
}

# ------------------------------
# End of helper.sh
# ------------------------------
