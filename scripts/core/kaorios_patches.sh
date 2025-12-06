#!/usr/bin/env bash
# kaorios_patches.sh - Kaorios Toolbox framework patching functions
# Follows Guide.md exactly - makes minimal surgical additions only

# Inject Kaorios utility classes into decompiled framework
inject_kaorios_utility_classes() {
    local decompile_dir="$1"
    local kaorios_source="${SCRIPT_DIR}/../kaorios_toolbox/utils/kaorios"

    if [ ! -d "$kaorios_source" ]; then
        err "Kaorios utility classes not found at $kaorios_source"
        return 1
    fi

    log "Injecting Kaorios utility classes into framework..."

    # Find the highest numbered smali_classes directory (the LAST one)
    local target_smali_dir="smali"
    local max_num=0

    # Check for smali_classes2, smali_classes3, etc.
    for dir in "$decompile_dir"/smali_classes*; do
        if [ -d "$dir" ]; then
            # Extract the number from smali_classesN
            local num=$(basename "$dir" | sed 's/smali_classes//')
            if [[ "$num" =~ ^[0-9]+$ ]] && [ "$num" -gt "$max_num" ]; then
                max_num=$num
                target_smali_dir="smali_classes${num}"
            fi
        fi
    done

    log "Injecting into last existing directory: $target_smali_dir"

    # Create the package directory structure in com/android/internal/util/kaorios/
    local target_dir="$decompile_dir/$target_smali_dir/com/android/internal/util/kaorios"
    mkdir -p "$target_dir"

    # Copy all utility classes
    if ! cp -r "$kaorios_source"/* "$target_dir/"; then
        err "Failed to copy Kaorios utility classes"
        return 1
    fi

    local copied_count=$(find "$target_dir" -name "*.smali" | wc -l)
    log "✓ Injected $copied_count Kaorios utility classes into $target_smali_dir/com/android/internal/util/kaorios/"

    return 0
}

# Patch ApplicationPackageManager.hasSystemFeature - Following Guide.md exactly
# Per Guide:
#   1. Replace .locals X with .registers 12
#   2. Find mHasSystemFeatureCache line
#   3. Insert entire Kaorios block (from template lines 72-407) ABOVE that line
patch_application_package_manager_has_system_feature() {
    local decompile_dir="$1"

    log "Patching ApplicationPackageManager.hasSystemFeature (per Guide.md)..."

    # Find the ApplicationPackageManager.smali file
    local target_file
    target_file=$(find "$decompile_dir" -type f -path "*/android/app/ApplicationPackageManager.smali" | head -n1)

    if [ -z "$target_file" ]; then
        warn "ApplicationPackageManager.smali not found"
        return 0
    fi

    # Relocate ApplicationPackageManager to the last smali directory to avoid DEX limit in the primary dex
    local current_smali_dir=$(echo "$target_file" | sed -E 's|(.*/smali(_classes[0-9]*)?)/.*|\1|')

    # Identify the last smali directory
    local last_smali_dir="smali"
    local max_num=0
    for dir in "$decompile_dir"/smali_classes*; do
        if [ -d "$dir" ]; then
            local num=$(basename "$dir" | sed 's/smali_classes//')
            if [[ "$num" =~ ^[0-9]+$ ]] && [ "$num" -gt "$max_num" ]; then
                max_num=$num
                last_smali_dir="smali_classes${num}"
            fi
        fi
    done

    local target_root="$decompile_dir/$last_smali_dir"

    # Only move if it's not already in the last directory
    if [ "$current_smali_dir" != "$target_root" ]; then
        log "Relocating ApplicationPackageManager to $last_smali_dir to avoid DEX limit..."

        # Create destination directory
        local rel_path="android/app"
        local new_dir="$target_root/$rel_path"
        mkdir -p "$new_dir"

        # Move the main class and all inner classes
        local src_dir=$(dirname "$target_file")
        mv "$src_dir"/ApplicationPackageManager*.smali "$new_dir/"

        # Update target_file to point to the new location
        target_file="$new_dir/ApplicationPackageManager.smali"
        log "✓ Relocated ApplicationPackageManager and inner classes to $last_smali_dir"
    fi

    # Use Python to implement the exact changes
    python3 - "$target_file" <<'PYTHON'
import sys
import re
from pathlib import Path

target_file = Path(sys.argv[1])

if not target_file.exists():
    sys.exit(1)

lines = target_file.read_text().splitlines()
modified = False

# 1. Add Field: .field private final mContext:Landroid/content/Context;
field_line = ".field private final mContext:Landroid/content/Context;"
if not any(field_line in line for line in lines):
    # Insert after class definition or before first method
    for i, line in enumerate(lines):
        if line.startswith(".source"):
            lines.insert(i + 1, "")
            lines.insert(i + 2, field_line)
            print("✓ Added mContext field")
            modified = True
            break

# 2. Add Constructor: ApplicationPackageManager(Context)
constructor_code = [
    ".method public constructor <init>(Landroid/content/Context;)V",
    "    .registers 2",
    "",
    "    invoke-direct {p0}, Ljava/lang/Object;-><init>()V",
    "",
    "    iput-object p1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/content/Context;",
    "",
    "    return-void",
    ".end method"
]

# Check if constructor already exists
constructor_exists = False
for i, line in enumerate(lines):
    if ".method public constructor <init>(Landroid/content/Context;)V" in line:
        constructor_exists = True
        break

if not constructor_exists:
    # Insert before the first method or at a reasonable place
    # Let's find the default constructor or just insert at the beginning of methods
    insert_idx = -1
    for i, line in enumerate(lines):
        if line.startswith(".method"):
            insert_idx = i
            break

    if insert_idx != -1:
        lines.insert(insert_idx, "")
        for line in reversed(constructor_code):
            lines.insert(insert_idx, line)
        print("✓ Added ApplicationPackageManager(Context) constructor")
        modified = True

# 3. Patch hasSystemFeature(String, int)
kaorios_block = r"""
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getAppLog()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/kaorios/SettingsHelper;->isToggleEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getFeaturesPixel()[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getFeaturesPixelOthers()[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getFeaturesTensor()[Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getFeaturesNexus()[Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_9f

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getPackageGsa()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6f

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getPackagePixelAgent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6f

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getPackagePixelCreativeAssistant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6f

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getPackagePixelDialer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6f

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getPackagePhotos()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9f

    if-nez v1, :cond_9f

    :cond_6f
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7b

    goto/16 :goto_14d

    :cond_7b
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_87

    goto/16 :goto_14d

    :cond_87
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_93

    goto/16 :goto_14d

    :cond_93
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9f

    goto/16 :goto_14d

    :cond_9f
    const/4 v7, 0x0

    if-eqz v0, :cond_dc

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getPackagePhotos()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_dc

    if-eqz v1, :cond_dc

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    goto :goto_cf

    :cond_b9
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    goto/16 :goto_14d

    :cond_c5
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d0

    :goto_cf
    return v7

    :cond_d0
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dc

    goto/16 :goto_14d

    :cond_dc
    iget-object p0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getSystemLog()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v7}, Lcom/android/internal/util/kaorios/SettingsHelper;->isToggleEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getModelInfoProperty()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getPixelTensorModelRegex()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_11e

    invoke-static {}, Lcom/android/internal/util/kaorios/KaoriFeaturesUtils;->getPackageGoogleAs()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11e

    if-eqz v1, :cond_10f

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    goto :goto_14d

    :cond_10f
    if-nez v1, :cond_11e

    if-eqz p0, :cond_11e

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11e

    goto :goto_14d

    :cond_11e
    if-eqz p1, :cond_12d

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12d

    if-nez v1, :cond_12d

    return p0

    :cond_12d
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_138

    goto :goto_14d

    :cond_138
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_143

    goto :goto_14d

    :cond_143
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14e

    :goto_14d
    return v3

    :cond_14e
""".splitlines()

# Find hasSystemFeature(String, int) method
method_start = None
for i, line in enumerate(lines):
    if '.method ' in line and 'hasSystemFeature(Ljava/lang/String;I)Z' in line:
        method_start = i
        break

if method_start is not None:
    # Change .locals to .registers 12
    registers_line = None
    for i in range(method_start, method_start + 10):
        if '.locals' in lines[i] or '.registers' in lines[i]:
            registers_line = i
            break

    if registers_line:
        old_value = lines[registers_line].strip()
        if '.registers 12' not in lines[registers_line]:
            indent = re.match(r'^\s*', lines[registers_line]).group(0)
            lines[registers_line] = f'{indent}.registers 12'
            print(f"✓ Changed '{old_value}' to '.registers 12'")
            modified = True

    # Find mHasSystemFeatureCache
    cache_line = None
    for i in range(method_start, len(lines)):
        if 'mHasSystemFeatureCache' in lines[i] and 'sget-object' in lines[i]:
            cache_line = i
            break

    if cache_line:
        # Check if already patched
        already_patched = False
        for i in range(method_start, cache_line):
            if 'KaoriFeaturesUtils' in lines[i]:
                already_patched = True
                break

        if not already_patched:
            # Insert Kaorios block
            for line in reversed(kaorios_block):
                lines.insert(cache_line, line)
            print("✓ Inserted Kaorios logic block")
            modified = True

if modified:
    target_file.write_text('\n'.join(lines) + '\n')
    print("✓ Successfully patched ApplicationPackageManager.smali")
else:
    print("No changes needed or already patched")
PYTHON

    if [ $? -eq 0 ]; then
        log "✓ Patched ApplicationPackageManager.hasSystemFeature"
    else
        warn "ApplicationPackageManager patch failed"
    fi

    return 0
}

# Patch Instrumentation.newApplication methods
# Guide says: Find "return-object v0" before ".end method" and add invoke-static line above it
patch_instrumentation_new_application() {
    local decompile_dir="$1"

    log "Patching Instrumentation.newApplication methods..."

    # Find the Instrumentation.smali file
    local target_file
    target_file=$(find "$decompile_dir" -type f -path "*/android/app/Instrumentation.smali" | head -n1)

    if [ -z "$target_file" ]; then
        warn "Instrumentation.smali not found"
        return 0
    fi

    # Patch: Add invoke-static line before "return-object v0" in both newApplication methods
    python3 - "$target_file" <<'PYTHON'
import sys
import re
from pathlib import Path

target_file = Path(sys.argv[1])

if not target_file.exists():
    sys.exit(1)

lines = target_file.read_text().splitlines()
modified = False

# Track which newApplication method we're in
in_new_app_method = False
method_param = None  # Will be 'p1' or 'p3' depending on which method
i = 0

while i < len(lines):
    line = lines[i]

    # Check if we're entering a newApplication method
    if '.method ' in line and 'newApplication' in line:
        if 'Ljava/lang/Class;Landroid/content/Context;' in line:
            in_new_app_method = True
            method_param = 'p1'  # Context parameter is p1
        elif 'Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;' in line:
            in_new_app_method = True
            method_param = 'p3'  # Context parameter is p3

    # If we're in a newApplication method and find "return-object v0"
    if in_new_app_method and 'return-object v0' in line:
        # Check if next line is .end method (to ensure we're at method end)
        if i + 1 < len(lines) and '.end method' in lines[i+1]:
            # Check if patch already exists
            if i > 0 and 'ToolboxUtils;->KaoriosProps' in lines[i-1]:
                in_new_app_method = False
                i += 1
                continue

            # Get indentation from current line
            indent = re.match(r'^\s*', line).group(0)

            # Insert the patch line before return-object
            patch_line = f'{indent}invoke-static {{{method_param}}}, Lcom/android/internal/util/kaorios/ToolboxUtils;->KaoriosProps(Landroid/content/Context;)V'
            lines.insert(i, '')  # Add blank line
            lines.insert(i, patch_line)
            modified = True
            i += 2  # Skip past the inserted lines
            in_new_app_method = False
            method_param = None
            continue

    # Exit method
    if '.end method' in line:
        in_new_app_method = False
        method_param = None

    i += 1

if modified:
    target_file.write_text('\n'.join(lines) + '\n')
    print("✓ Patched Instrumentation.newApplication methods")
else:
    print("No changes needed or patch already applied")
PYTHON

    if [ $? -eq 0 ]; then
        log "✓ Patched Instrumentation.newApplication methods"
    else
        warn "Failed to patch Instrumentation.newApplication methods"
    fi

    return 0
}

# Patch KeyStore2.getKeyEntry method
# Guide says: Find "return-object v0" before ".end method" and add two lines above it
patch_keystore2_get_key_entry() {
    local decompile_dir="$1"

    log "Patching KeyStore2.getKeyEntry..."

    # Find the KeyStore2.smali file
    local target_file
    target_file=$(find "$decompile_dir" -type f -path "*/android/security/KeyStore2.smali" | head -n1)

    if [ -z "$target_file" ]; then
        warn "KeyStore2.smali not found"
        return 0
    fi

    python3 - "$target_file" <<'PYTHON'
import sys
import re
from pathlib import Path

target_file = Path(sys.argv[1])

if not target_file.exists():
    sys.exit(1)

lines = target_file.read_text().splitlines()
modified = False

# Find getKeyEntry method
in_method = False
i = 0

while i < len(lines):
    line = lines[i]

    # Check if we're entering getKeyEntry method
    if '.method ' in line and 'getKeyEntry' in line and 'KeyDescriptor' in line and 'lambda' not in line:
        in_method = True

    # If we're in the method and find "return-object v0"
    if in_method and 'return-object v0' in line:
        # Check if next line is .end method
        if i + 1 < len(lines) and '.end method' in lines[i+1]:
            # Check if patch already exists
            if i > 0 and 'ToolboxUtils;->KaoriosKeybox' in lines[i-1]:
                in_method = False
                i += 1
                continue

            # Get indentation
            indent = re.match(r'^\s*', line).group(0)

            # Insert the two patch lines before return-object
            patch_lines = [
                '',
                f'{indent}invoke-static {{v0}}, Lcom/android/internal/util/kaorios/ToolboxUtils;->KaoriosKeybox(Landroid/system/keystore2/KeyEntryResponse;)Landroid/system/keystore2/KeyEntryResponse;',
                f'{indent}move-result-object v0'
            ]

            for j, patch_line in enumerate(patch_lines):
                lines.insert(i + j, patch_line)

            modified = True
            i += len(patch_lines)
            in_method = False
            continue

    if '.end method' in line:
        in_method = False

    i += 1

if modified:
    target_file.write_text('\n'.join(lines) + '\n')
    print("✓ Patched KeyStore2.getKeyEntry")
else:
    print("No changes needed or patch already applied")
PYTHON

    if [ $? -eq 0 ]; then
        log "✓ Patched KeyStore2.getKeyEntry"
    else
        warn "Failed to patch KeyStore2.getKeyEntry"
    fi

    return 0
}

# Patch AndroidKeyStoreSpi.engineGetCertificateChain method
# Guide says: Below ".registers XX" add invoke-static line
patch_android_keystore_spi_engine_get_certificate_chain() {
    local decompile_dir="$1"

    log "Patching AndroidKeyStoreSpi.engineGetCertificateChain..."

    # Find the AndroidKeyStoreSpi.smali file
    local target_file
    target_file=$(find "$decompile_dir" -type f -path "*/android/security/keystore2/AndroidKeyStoreSpi.smali" | head -n1)

    if [ -z "$target_file" ]; then
        warn "AndroidKeyStoreSpi.smali not found"
        return 0
    fi

    python3 - "$target_file" <<'PYTHON'
import sys
import re
from pathlib import Path

target_file = Path(sys.argv[1])

if not target_file.exists():
    sys.exit(1)

lines = target_file.read_text().splitlines()
modified = False

# Find engineGetCertificateChain method
in_method = False
i = 0

while i < len(lines):
    line = lines[i]

    # Check if we're entering engineGetCertificateChain method
    if '.method ' in line and 'engineGetCertificateChain' in line:
        in_method = True

    if in_method:
        # Patch 1: Add KaoriosPropsEngineGetCertificateChain after .registers/.locals
        if ('.registers' in line or '.locals' in line):
            # Check if patch already exists in the next few lines
            patch_exists = False
            for k in range(1, 5):
                if i + k < len(lines) and 'ToolboxUtils;->KaoriosPropsEngineGetCertificateChain' in lines[i+k]:
                    patch_exists = True
                    break

            if patch_exists:
                pass # Already patched
            else:
                # Get indentation
                indent = re.match(r'^\s*', line).group(0)

                # Insert the patch line after .registers
                patch_lines = [
                    '',
                    f'{indent}invoke-static {{}}, Lcom/android/internal/util/kaorios/ToolboxUtils;->KaoriosPropsEngineGetCertificateChain()V'
                ]

                for j, patch_line in enumerate(patch_lines):
                    lines.insert(i + 1 + j, patch_line)

                modified = True
                i += len(patch_lines) # Skip inserted lines

        # Patch 2: Add KaoriosKeybox AFTER "aput-object v2, v3, v4" (which follows "const/4 v4, 0x0")
        if 'const/4 v4, 0x0' in line:
            # Look ahead for aput-object, allowing for blank lines
            found_aput_idx = -1
            for k in range(1, 10): # Look ahead up to 9 lines
                if i + k < len(lines):
                    check_line = lines[i+k].strip()
                    if check_line == 'aput-object v2, v3, v4':
                        found_aput_idx = i + k
                        break
                    elif check_line and not check_line.startswith('.'): # Stop if we hit code that isn't aput-object
                         pass

            if found_aput_idx != -1:
                # Check if patch already exists AFTER the aput-object line
                patch_exists = False
                for k in range(1, 5):
                     if found_aput_idx + k < len(lines) and 'ToolboxUtils;->KaoriosKeybox' in lines[found_aput_idx+k]:
                         patch_exists = True
                         break

                if not patch_exists:
                    # Get indentation from the aput-object line
                    indent = re.match(r'^\s*', lines[found_aput_idx]).group(0)

                    # Insert patch AFTER aput-object
                    patch_lines = [
                        '',
                        f'{indent}invoke-static {{v3}}, Lcom/android/internal/util/kaorios/ToolboxUtils;->KaoriosKeybox([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;',
                        f'{indent}move-result-object v3'
                    ]

                    for j, patch_line in enumerate(patch_lines):
                        lines.insert(found_aput_idx + 1 + j, patch_line)

                    modified = True
                    # Advance i to skip the inserted lines and avoid re-processing
                    i = found_aput_idx + len(patch_lines) + 1
                    continue

    if '.end method' in line:
        in_method = False

    i += 1

if modified:
    target_file.write_text('\n'.join(lines) + '\n')
    print("✓ Patched AndroidKeyStoreSpi.engineGetCertificateChain")
else:
    print("No changes needed or patch already applied")
PYTHON

    if [ $? -eq 0 ]; then
        log "✓ Patched AndroidKeyStoreSpi.engineGetCertificateChain"
    else
        warn "Failed to patch AndroidKeyStoreSpi.engineGetCertificateChain"
    fi

    return 0
}

# Main function to apply all Kaorios Toolbox patches
apply_kaorios_toolbox_patches() {
    local decompile_dir="$1"

    log "========================================="
    log "Applying Kaorios Toolbox Patches"
    log "========================================="

    inject_kaorios_utility_classes "$decompile_dir" || return 1
    patch_application_package_manager_has_system_feature "$decompile_dir"
    patch_instrumentation_new_application "$decompile_dir"
    patch_keystore2_get_key_entry "$decompile_dir"
    patch_android_keystore_spi_engine_get_certificate_chain "$decompile_dir"

    log "✓ Kaorios Toolbox patches applied successfully (4/4 core patches)"
    log "  ✓ Instrumentation.newApplication - Property spoofing initialization"
    log "  ✓ KeyStore2.getKeyEntry - Keybox attestation spoofing"
    log "  ✓ AndroidKeyStoreSpi.engineGetCertificateChain - Certificate chain handling"
    log "  ✓ ApplicationPackageManager.hasSystemFeature"

    return 0
}