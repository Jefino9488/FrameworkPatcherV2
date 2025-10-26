#!/bin/bash

# Module Creator using MMT-Extended
# This script creates a module that works with Magisk, KSU, and SUFS

# Source helper functions
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/helper.sh"

create_module() {
    local api_level="$1"
    local device_name="$2"
    local version_name="$3"

    log "Creating module for $device_name (v$version_name) - compatible with Magisk, KSU, and SUFS"

    local build_dir="build_module"
    rm -rf "$build_dir"

    # Copy MMT-Extended template
    cp -r "templates/mmt-extended" "$build_dir" || {
        err "MMT-Extended template not found: templates/mmt-extended"
        return 1
    }

    # Clean up unnecessary files from MMT-Extended template
    rm -f "$build_dir/.git" "$build_dir/.gitignore" "$build_dir/.gitattributes"
    rm -f "$build_dir/README.md" "$build_dir/changelog.md" "$build_dir/LICENSE"
    rm -f "$build_dir/update.json" "$build_dir/install.zip"
    rm -rf "$build_dir/common/addon" "$build_dir/zygisk"
    rm -f "$build_dir/system/placeholder" "$build_dir/common/addon/placeholder" "$build_dir/zygisk/placeholder"

    # Update module.prop for universal compatibility
    local module_prop="$build_dir/module.prop"
    if [ -f "$module_prop" ]; then
        # Update basic properties
        sed -i "s/^id=.*/id=mod_frameworks/" "$module_prop"
        sed -i "s/^name=.*/name=Framework Patch V2/" "$module_prop"
        sed -i "s/^version=.*/version=$version_name/" "$module_prop"
        sed -i "s/^versionCode=.*/versionCode=$version_name/" "$module_prop"
        sed -i "s/^author=.*/author=Jᴇғɪɴᴏ/" "$module_prop"
        sed -i "s/^description=.*/description=Framework patcher compatible with Magisk, KernelSU (KSU), and SUFS. Patched using jefino9488.github.io\/FrameworkPatcherV2/" "$module_prop"

        # Remove updateJson line
        sed -i "/^updateJson=/d" "$module_prop"

        # Add universal compatibility properties
        {
            echo "minMagisk=20400"
            echo "ksu=1"
            echo "minKsu=10904"
            echo "sufs=1"
            echo "minSufs=10000"
            echo "minApi=34"
            echo "maxApi=34"
            echo "requireReboot=true"
            echo "support=https://t.me/Jefino9488"
        } >>"$module_prop"
    fi

    # Update customize.sh with framework replacements
    local customize_sh="$build_dir/customize.sh"
    if [ -f "$customize_sh" ]; then
        # Replace the empty REPLACE section with our framework files
        sed -i '/^REPLACE="/,/^"/c\
REPLACE="\
/system/framework/framework.jar\
/system/framework/services.jar\
/system/system_ext/framework/miui-services.jar\
"' "$customize_sh"
    fi

    # Create required directories and copy patched files
    mkdir -p "$build_dir/system/framework"
    mkdir -p "$build_dir/system/system_ext/framework"

    # Copy patched files
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

    log "Created module: $zip_name"
    echo "$zip_name"
}

# Legacy function for backward compatibility
create_magisk_module() {
    create_module "$1" "$2" "$3"
}

# Module creation
create_all_modules() {
    local api_level="$1"
    local device_name="$2"
    local version_name="$3"

    log "Creating module using MMT-Extended template"
    create_module "$api_level" "$device_name" "$version_name"
}
