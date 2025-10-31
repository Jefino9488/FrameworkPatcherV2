#!/bin/bash

# Set up environment variables for GitHub workflow
TOOLS_DIR="$(pwd)/tools"
WORK_DIR="$(pwd)"
BACKUP_DIR="$WORK_DIR/backup"

# Create backup directory
mkdir -p "$BACKUP_DIR"

# ============================================
# Feature Flags (set by command-line arguments)
# ============================================
FEATURE_DISABLE_SIGNATURE_VERIFICATION=0

# Function to decompile JAR file
decompile_jar() {
    local jar_file="$1"
    local base_name
    base_name="$(basename "$jar_file" .jar)"
    local output_dir="$WORK_DIR/${base_name}_decompile"

    echo "Decompiling $jar_file with apktool..."

    # Validate JAR file before processing
    if [ ! -f "$jar_file" ]; then
        echo "❌ Error: JAR file $jar_file not found!"
        exit 1
    fi

    # Check if JAR file is valid ZIP
    if ! unzip -t "$jar_file" >/dev/null 2>&1; then
        echo "❌ Error: $jar_file is corrupted or not a valid ZIP file!"
        echo "File size: $(stat -c%s "$jar_file") bytes"
        echo "File type: $(file "$jar_file")"
        echo "This usually means the download was incomplete or corrupted."
        echo "Please check the download URL and try again."
        exit 1
    fi

    rm -rf "$output_dir" "$base_name"
    mkdir -p "$output_dir"

    mkdir -p "$BACKUP_DIR/$base_name"
    unzip -o "$jar_file" "META-INF/*" "res/*" -d "$BACKUP_DIR/$base_name" >/dev/null 2>&1

    # Run apktool with better error handling
    if ! java -jar "$TOOLS_DIR/apktool.jar" d -q -f "$jar_file" -o "$output_dir"; then
        echo "❌ Error: Failed to decompile $jar_file with apktool"
        echo "This may indicate the JAR file is corrupted or incompatible."
        echo "File size: $(stat -c%s "$jar_file") bytes"
        exit 1
    fi

    mkdir -p "$output_dir/unknown"
    cp -r "$BACKUP_DIR/$base_name/res" "$output_dir/unknown/" 2>/dev/null
    cp -r "$BACKUP_DIR/$base_name/META-INF" "$output_dir/unknown/" 2>/dev/null
}

# Function to recompile JAR file
recompile_jar() {
    local jar_file="$1"
    local base_name
    base_name="$(basename "$jar_file" .jar)"
    local output_dir="$WORK_DIR/${base_name}_decompile"
    local patched_jar="${base_name}_patched.jar"

    echo "Recompiling $jar_file with apktool..."

    # Check if decompiled directory exists
    if [ ! -d "$output_dir" ]; then
        echo "❌ Error: Decompiled directory $output_dir not found!"
        echo "This means the decompilation step failed."
        exit 1
    fi

    # Check if apktool.yml exists (required for recompilation)
    if [ ! -f "$output_dir/apktool.yml" ]; then
        echo "⚠️ Warning: apktool.yml not found in $output_dir"
        echo "This usually means the decompilation didn't create proper metadata."
        echo "Attempting to continue anyway..."
    fi

    # Run apktool with better error handling
    if ! java -jar "$TOOLS_DIR/apktool.jar" b -q -f "$output_dir" -o "$patched_jar"; then
        echo "❌ Error: Failed to recompile $output_dir with apktool"
        echo "This may indicate issues with the decompiled files."
        echo "Decompiled directory contents:"
        ls -la "$output_dir" || echo "Directory not accessible"
        exit 1
    fi

    echo "Created patched JAR: $patched_jar"
}

# Function to patch method with direct file path (no searching)
patch_method_in_file() {
    local method="$1"
    local ret_val="$2"
    local file="$3"

    # Check if file exists
    if [ ! -f "$file" ]; then
        echo "⚠ File not found: $(basename "$file")"
        return
    fi

    local start
    start=$(grep -n "^[[:space:]]*\.method.* $method" "$file" | cut -d: -f1 | head -n1)
    [ -z "$start" ] && {
        echo "⚠ Method $method not found in $(basename "$file")"
        return
    }

    local total_lines end=0 i="$start"
    total_lines=$(wc -l <"$file")
    while [ "$i" -le "$total_lines" ]; do
        line=$(sed -n "${i}p" "$file")
        [[ "$line" == *".end method"* ]] && {
            end="$i"
            break
        }
        i=$((i + 1))
    done

    [ "$end" -eq 0 ] && {
        echo "⚠ End not found for $method"
        return
    }

    local method_head
    method_head=$(sed -n "${start}p" "$file")
    method_head_escaped=$(printf "%s\n" "$method_head" | sed 's/\\/\\\\/g')

    sed -i "${start},${end}c\\
$method_head_escaped\\
    .registers 8\\
    const/4 v0, 0x$ret_val\\
    return v0\\
.end method" "$file"

    echo "✓ Patched $method to return $ret_val in $(basename "$file")"
}

# Function to add static return patch (legacy - searches for file)
add_static_return_patch() {
    local method="$1"
    local ret_val="$2"
    local decompile_dir="$3"
    local file

    # Simple working approach from old script
    file=$(find "$decompile_dir" -type f -name "*.smali" -print0 | xargs -0 grep -l ".method.* $method" 2>/dev/null | head -n 1)

    [ -z "$file" ] && return

    # Call the new function with found file
    patch_method_in_file "$method" "$ret_val" "$file"
}

# Function to patch return-void method with direct file path
patch_return_void_in_file() {
    local method="$1"
    local file="$2"

    # Check if file exists
    if [ ! -f "$file" ]; then
        echo "⚠ File not found: $(basename "$file")"
        return
    fi

    local start
    start=$(grep -n "^[[:space:]]*\.method.* $method" "$file" | cut -d: -f1 | head -n1)
    [ -z "$start" ] && {
        echo "⚠ Method $method not found in $(basename "$file")"
        return
    }

    local total_lines end=0 i="$start"
    total_lines=$(wc -l <"$file")
    while [ "$i" -le "$total_lines" ]; do
        line=$(sed -n "${i}p" "$file")
        [[ "$line" == *".end method"* ]] && {
            end="$i"
            break
        }
        i=$((i + 1))
    done

    [ "$end" -eq 0 ] && {
        echo "⚠ Method $method end not found"
        return
    }

    local method_head
    method_head=$(sed -n "${start}p" "$file")
    method_head_escaped=$(printf "%s\n" "$method_head" | sed 's/\\/\\\\/g')

    sed -i "${start},${end}c\\
$method_head_escaped\\
    .registers 8\\
    return-void\\
.end method" "$file"

    echo "✓ Patched $method → return-void in $(basename "$file")"
}

# Function to patch return-void method (legacy - searches for file)
patch_return_void_method() {
    local method="$1"
    local decompile_dir="$2"
    local file

    # Simple working approach from old script
    file=$(find "$decompile_dir" -type f -name "*.smali" -print0 | xargs -0 grep -l ".method.* $method" 2>/dev/null | head -n 1)
    [ -z "$file" ] && {
        echo "Method $method not found"
        return
    }

    # Call the new function with found file
    patch_return_void_in_file "$method" "$file"
}

# ============================================
# Feature-specific patch functions for framework.jar
# ============================================

# Apply signature verification bypass patches to framework.jar (Android 13)
apply_framework_signature_patches() {
    local decompile_dir="$1"

    echo "Applying signature verification patches to framework.jar (Android 13)..."

    # Patch getMinimumSignatureSchemeVersionForTargetSdk to return 0
    echo "Patching getMinimumSignatureSchemeVersionForTargetSdk..."
    add_static_return_patch "getMinimumSignatureSchemeVersionForTargetSdk" 0 "$decompile_dir"

    # Patch verifyMessageDigest to return 1
    echo "Patching verifyMessageDigest..."
    add_static_return_patch "verifyMessageDigest" 1 "$decompile_dir"

    # Patch verifySignatures - find and patch invoke-interface result
    echo "Patching verifySignatures..."
    local file
    file=$(find "$decompile_dir" -type f -name "*.smali" -print0 | xargs -0 grep -l "invoke-interface.*ParseResult;->isError()Z" 2>/dev/null | head -n 1)
    if [ -f "$file" ]; then
        local pattern="invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z"
        local linenos
        linenos=$(grep -nF "$pattern" "$file" | cut -d: -f1)

        if [ -n "$linenos" ]; then
            for lineno in $linenos; do
                local move_result_lineno=$((lineno + 1))
                local current_line=$(sed -n "${move_result_lineno}p" "$file" | sed 's/^[ \t]*//')
                if [[ "$current_line" == "move-result v1" ]]; then
                    local indent=$(sed -n "${move_result_lineno}p" "$file" | grep -o '^[ \t]*')
                    sed -i "$((move_result_lineno + 1))i\\
${indent}const/4 v1, 0x0" "$file"
                    echo "Patched verifySignatures at line $((move_result_lineno + 1))"
                    break
                fi
            done
        fi
    fi

    # Patch verifyV1Signature
    echo "Patching verifyV1Signature..."
    file=$(find "$decompile_dir" -type f -name "*.smali" -print0 | xargs -0 grep -l "verifyV1Signature.*ParseInput.*Ljava/lang/String;Z" 2>/dev/null | head -n 1)
    if [ -f "$file" ]; then
        local pattern="invoke-static.*verifyV1Signature"
        local lineno=$(grep -n "$pattern" "$file" | cut -d: -f1 | head -n1)
        if [ -n "$lineno" ]; then
            sed -i "${lineno}i\\
    const/4 p3, 0x0" "$file"
            echo "Patched verifyV1Signature at line $lineno"
        fi
    fi

    # Patch verifyV2Signature
    echo "Patching verifyV2Signature..."
    file=$(find "$decompile_dir" -type f -name "*.smali" -print0 | xargs -0 grep -l "verifyV2Signature.*ParseInput.*Ljava/lang/String;Z" 2>/dev/null | head -n 1)
    if [ -f "$file" ]; then
        local pattern="invoke-static.*verifyV2Signature"
        local lineno=$(grep -n "$pattern" "$file" | cut -d: -f1 | head -n1)
        if [ -n "$lineno" ]; then
            sed -i "${lineno}i\\
    const/4 p3, 0x0" "$file"
            echo "Patched verifyV2Signature at line $lineno"
        fi
    fi

    # Patch verifyV3Signature
    echo "Patching verifyV3Signature..."
    file=$(find "$decompile_dir" -type f -name "*.smali" -print0 | xargs -0 grep -l "verifyV3Signature.*ParseInput.*Ljava/lang/String;Z" 2>/dev/null | head -n 1)
    if [ -f "$file" ]; then
        local pattern="invoke-static.*verifyV3Signature"
        local lineno=$(grep -n "$pattern" "$file" | cut -d: -f1 | head -n1)
        if [ -n "$lineno" ]; then
            sed -i "${lineno}i\\
    const/4 p3, 0x0" "$file"
            echo "Patched verifyV3Signature at line $lineno"
        fi
    fi

    # Patch verifyV3AndBelowSignatures
    echo "Patching verifyV3AndBelowSignatures..."
    file=$(find "$decompile_dir" -type f -name "*.smali" -print0 | xargs -0 grep -l "verifyV3AndBelowSignatures.*ParseInput.*Ljava/lang/String;IZ" 2>/dev/null | head -n 1)
    if [ -f "$file" ]; then
        local pattern="invoke-static.*verifyV3AndBelowSignatures"
        local lineno=$(grep -n "$pattern" "$file" | cut -d: -f1 | head -n1)
        if [ -n "$lineno" ]; then
            sed -i "${lineno}i\\
    const/4 p3, 0x0" "$file"
            echo "Patched verifyV3AndBelowSignatures at line $lineno"
        fi
    fi

    # Patch checkCapability to return 1
    echo "Patching checkCapability..."
    add_static_return_patch "checkCapability" 1 "$decompile_dir"

    # Patch checkCapabilityRecover to return 1
    echo "Patching checkCapabilityRecover..."
    add_static_return_patch "checkCapabilityRecover" 1 "$decompile_dir"

    # Patch isPackageWhitelistedForHiddenApis to return 1
    echo "Patching isPackageWhitelistedForHiddenApis..."
    add_static_return_patch "isPackageWhitelistedForHiddenApis" 1 "$decompile_dir"

    # Patch StrictJarFile findEntry
    echo "Patching StrictJarFile findEntry..."
    file=$(find "$decompile_dir" -type f -name "StrictJarFile.smali" | head -n 1)
    if [ -f "$file" ]; then
        local start_line
        start_line=$(grep -n "invoke-virtual.*findEntry.*Ljava/util/zip/ZipEntry;" "$file" | cut -d: -f1 | head -n1)

        if [ -n "$start_line" ]; then
            local i=$((start_line + 1))
            local total_lines=$(wc -l <"$file")

            while [ "$i" -le "$total_lines" ]; do
                line=$(sed -n "${i}p" "$file")
                if [[ "$line" == *"if-eqz v6"* ]]; then
                    # Remove the if-eqz line
                    sed -i "${i}d" "$file"
                    echo "Removed if-eqz at line $i"
                    break
                fi
                i=$((i + 1))
            done
        fi
    fi

    echo "Signature verification patches applied to framework.jar (Android 13)"
}

# Main framework patching function
patch_framework() {
    local framework_path="$WORK_DIR/framework.jar"
    local decompile_dir="$WORK_DIR/framework_decompile"

    echo "Starting framework.jar patch..."

    # Check if any framework features are enabled
    if [ $FEATURE_DISABLE_SIGNATURE_VERIFICATION -eq 0 ]; then
        echo "No framework features selected, skipping framework.jar"
        return 0
    fi

    # Decompile framework.jar
    decompile_jar "$framework_path"

    # Apply feature-specific patches based on flags
    if [ $FEATURE_DISABLE_SIGNATURE_VERIFICATION -eq 1 ]; then
        apply_framework_signature_patches "$decompile_dir"
    fi

    # Recompile framework.jar
    recompile_jar "$framework_path"

    # Clean up
    rm -rf "$WORK_DIR/framework" "$decompile_dir"

    echo "Framework.jar patching completed."
}

# ============================================
# Feature-specific patch functions for services.jar
# ============================================

# Apply signature verification bypass patches to services.jar (Android 13)
apply_services_signature_patches() {
    local decompile_dir="$1"

    echo "Applying signature verification patches to services.jar (Android 13)..."

    # Patch checkDowngrade to return-void
    echo "Patching checkDowngrade..."
    patch_return_void_method "checkDowngrade" "$decompile_dir"

    # Patch shouldCheckUpgradeKeySetLocked to return 0
    echo "Patching shouldCheckUpgradeKeySetLocked..."
    add_static_return_patch "shouldCheckUpgradeKeySetLocked" 0 "$decompile_dir"

    # Patch verifySignatures to return 0
    echo "Patching verifySignatures..."
    add_static_return_patch "verifySignatures" 0 "$decompile_dir"

    # Patch matchSignaturesCompat to return 1
    echo "Patching matchSignaturesCompat..."
    add_static_return_patch "matchSignaturesCompat" 1 "$decompile_dir"

    # Patch isPersistent check
    echo "Patching isPersistent check..."
    local file
    file=$(find "$decompile_dir" -type f -name "*.smali" -print0 | xargs -0 grep -l "invoke-interface.*isPersistent()Z" 2>/dev/null | head -n 1)
    if [ -f "$file" ]; then
        local pattern="invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isPersistent()Z"
        local linenos=$(grep -nF "$pattern" "$file" | cut -d: -f1)

        if [ -n "$linenos" ]; then
            for lineno in $linenos; do
                local move_result_lineno=$((lineno + 1))
                local current_line=$(sed -n "${move_result_lineno}p" "$file" | sed 's/^[ \t]*//')
                if [[ "$current_line" == "move-result v2" ]]; then
                    local indent=$(sed -n "${move_result_lineno}p" "$file" | grep -o '^[ \t]*')
                    sed -i "$((move_result_lineno + 1))i\\
${indent}const/4 v2, 0x0" "$file"
                    echo "Patched isPersistent check at line $((move_result_lineno + 1))"
                    break
                fi
            done
        fi
    fi

    echo "Signature verification patches applied to services.jar (Android 13)"
}

# Main services patching function
patch_services() {
    local services_path="$WORK_DIR/services.jar"
    local decompile_dir="$WORK_DIR/services_decompile"

    echo "Starting services.jar patch..."

    # Check if any services features are enabled
    if [ $FEATURE_DISABLE_SIGNATURE_VERIFICATION -eq 0 ]; then
        echo "No services features selected, skipping services.jar"
        return 0
    fi

    # Decompile services.jar
    decompile_jar "$services_path"

    # Apply feature-specific patches based on flags
    if [ $FEATURE_DISABLE_SIGNATURE_VERIFICATION -eq 1 ]; then
        apply_services_signature_patches "$decompile_dir"
    fi

    # Recompile services.jar
    recompile_jar "$services_path"

    # Clean up
    rm -rf "$WORK_DIR/services" "$decompile_dir"

    echo "Services.jar patching completed."
}

# ============================================
# Feature-specific patch functions for miui-services.jar
# ============================================

# Apply signature verification bypass patches to miui-services.jar (Android 13)
apply_miui_services_signature_patches() {
    local decompile_dir="$1"

    echo "Applying signature verification patches to miui-services.jar (Android 13)..."

    # Note: Android 13 miui-services.jar typically doesn't require signature patches
    # as most signature verification is handled in framework.jar and services.jar
    echo "No miui-services.jar signature patches required for Android 13"

    echo "Signature verification patches applied to miui-services.jar (Android 13)"
}

# Main miui-services patching function
patch_miui_services() {
    local miui_services_path="$WORK_DIR/miui-services.jar"
    local decompile_dir="$WORK_DIR/miui-services_decompile"

    echo "Starting miui-services.jar patch..."

    # Check if any miui-services features are enabled
    if [ $FEATURE_DISABLE_SIGNATURE_VERIFICATION -eq 0 ]; then
        echo "No miui-services features selected, skipping miui-services.jar"
        return 0
    fi

    # Decompile miui-services.jar
    decompile_jar "$miui_services_path"

    # Apply feature-specific patches based on flags
    if [ $FEATURE_DISABLE_SIGNATURE_VERIFICATION -eq 1 ]; then
        apply_miui_services_signature_patches "$decompile_dir"
    fi

    # Recompile miui-services.jar
    recompile_jar "$miui_services_path"

    # Clean up
    rm -rf "$WORK_DIR/miui-services" "$decompile_dir"

    echo "Miui-services.jar patching completed."
}

# Source helper functions
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/helper.sh"

# Function to create module using FrameworkPatcherModule template
create_modules() {
    # shellcheck disable=SC2034  # api_level currently unused but kept for future compatibility
    local api_level="$1"
    local device_name="$2"
    local version_name="$3"

    echo "Creating module using FrameworkPatcherModule template"

    local build_dir="build_module"
    rm -rf "$build_dir"

    # Copy FrameworkPatcherModule template
    cp -r "templates/framework-patcher-module" "$build_dir" || {
        err "FrameworkPatcherModule template not found: templates/framework-patcher-module"
        return 1
    }

    # Update module.prop with device-specific info
    local module_prop="$build_dir/module.prop"
    if [ -f "$module_prop" ]; then
        sed -i "s/^version=.*/version=$version_name/" "$module_prop"
        sed -i "s/^versionCode=.*/versionCode=$version_name/" "$module_prop"
    fi

    # Create required directories and copy patched files
    mkdir -p "$build_dir/system/framework"
    mkdir -p "$build_dir/system/system_ext/framework"

    # Copy patched files if they exist
    [ -f "framework_patched.jar" ] && cp "framework_patched.jar" "$build_dir/system/framework/framework.jar"
    [ -f "services_patched.jar" ] && cp "services_patched.jar" "$build_dir/system/framework/services.jar"
    [ -f "miui-services_patched.jar" ] && cp "miui-services_patched.jar" "$build_dir/system/system_ext/framework/miui-services.jar"

    # Create module zip
    local safe_version
    safe_version=$(printf "%s" "$version_name" | sed 's/[. ]/-/g')
    local zip_name="Framework-Patcher-${device_name}-${safe_version}.zip"

    if command -v 7z >/dev/null 2>&1; then
        (cd "$build_dir" && 7z a -tzip "../$zip_name" "*" >/dev/null) || {
            err "7z failed to create $zip_name"
            return 1
        }
    elif command -v zip >/dev/null 2>&1; then
        (cd "$build_dir" && zip -r "../$zip_name" . >/dev/null) || {
            err "zip failed to create $zip_name"
            return 1
        }
    else
        err "No archiver found (7z or zip). Install one to create module archive."
        return 1
    fi

    echo "Created module: $zip_name"
}

# Legacy function for backward compatibility
create_magisk_module() {
    create_modules "$1" "$2" "$3" "magisk"
}

# Main function
main() {
    # Check for required arguments
    if [ $# -lt 3 ]; then
        cat <<EOF
Usage: $0 <api_level> <device_name> <version_name> [JAR_OPTIONS] [FEATURE_OPTIONS]

JAR OPTIONS (specify which JARs to patch):
  --framework           Patch framework.jar
  --services            Patch services.jar
  --miui-services       Patch miui-services.jar
  (If no JAR option specified, all JARs will be patched)

FEATURE OPTIONS (specify which features to apply):
  --disable-signature-verification    Disable signature verification (default if no feature specified)

EXAMPLES:
  # Apply signature verification bypass to all JARs (backward compatible)
  $0 33 xiaomi 1.0.0

  # Apply signature verification to framework only
  $0 33 xiaomi 1.0.0 --framework --disable-signature-verification

Creates a single module compatible with Magisk, KSU, and SUFS
EOF
        exit 1
    fi

    # Parse arguments
    API_LEVEL="$1"
    DEVICE_NAME="$2"
    VERSION_NAME="$3"
    shift 3

    # Check which JARs to patch
    PATCH_FRAMEWORK=0
    PATCH_SERVICES=0
    PATCH_MIUI_SERVICES=0

    while [ $# -gt 0 ]; do
        case "$1" in
            --framework)
                PATCH_FRAMEWORK=1
                ;;
            --services)
                PATCH_SERVICES=1
                ;;
            --miui-services)
                PATCH_MIUI_SERVICES=1
                ;;
            --disable-signature-verification)
                FEATURE_DISABLE_SIGNATURE_VERIFICATION=1
                ;;
            *)
                echo "Unknown option: $1"
                exit 1
                ;;
        esac
        shift
    done

    # If no JAR specified, patch all
    if [ $PATCH_FRAMEWORK -eq 0 ] && [ $PATCH_SERVICES -eq 0 ] && [ $PATCH_MIUI_SERVICES -eq 0 ]; then
        PATCH_FRAMEWORK=1
        PATCH_SERVICES=1
        PATCH_MIUI_SERVICES=1
    fi

    # If no feature specified, default to signature verification (backward compatibility)
    if [ $FEATURE_DISABLE_SIGNATURE_VERIFICATION -eq 0 ]; then
        FEATURE_DISABLE_SIGNATURE_VERIFICATION=1
        echo "No feature specified, defaulting to --disable-signature-verification"
    fi

    # Display selected features
    echo "============================================"
    echo "Selected Features:"
    [ $FEATURE_DISABLE_SIGNATURE_VERIFICATION -eq 1 ] && echo "  ✓ Disable Signature Verification"
    echo "============================================"

    # Patch requested JARs
    if [ $PATCH_FRAMEWORK -eq 1 ]; then
        patch_framework
    fi

    if [ $PATCH_SERVICES -eq 1 ]; then
        patch_services
    fi

    if [ $PATCH_MIUI_SERVICES -eq 1 ]; then
        patch_miui_services
    fi

    # Create module
    create_modules "$API_LEVEL" "$DEVICE_NAME" "$VERSION_NAME"

    echo "All patching completed successfully!"
}

# Run main function with all arguments
main "$@"