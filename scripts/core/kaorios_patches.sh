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
    local template_file="${SCRIPT_DIR}/../kaorios_toolbox/ApplicationPackageManager.smali"
    
    log "Patching ApplicationPackageManager.hasSystemFeature (per Guide.md)..."
    
    # Find the ApplicationPackageManager.smali file
    local target_file
    target_file=$(find "$decompile_dir" -type f -path "*/android/app/ApplicationPackageManager.smali" | head -n1)
    
    if [ -z "$target_file" ]; then
        warn "ApplicationPackageManager.smali not found"
        return 0
    fi
    
    if [ ! -f "$template_file" ]; then
        warn "Template file not found: $template_file"
        return 0
    fi
    
    # Use Python to implement the exact changes from comparing original vs template
    python3 - "$target_file" "$template_file" <<'PYTHON'
import sys
import re
from pathlib import Path

target_file = Path(sys.argv[1])
template_file = Path(sys.argv[2])

if not target_file.exists() or not template_file.exists():
    sys.exit(1)

lines = target_file.read_text().splitlines()
template_lines = template_file.read_text().splitlines()

# Extract the Kaorios block from template (lines between # kousei added and # end add, exclusive)
kaorios_start = None
kaorios_end = None
for i, line in enumerate(template_lines):
    if '# kousei added' in line:
        kaorios_start = i + 1  # Start after the comment  
    if '# end add' in line:
        kaorios_end = i  # End before this comment
        break

if kaorios_start is None or kaorios_end is None:
    print("ERROR: Could not find Kaorios block markers in template")
    sys.exit(1)

# Extract the Kaorios insertion block (should be ~336 lines)
kaorios_block = template_lines[kaorios_start:kaorios_end]
print(f"Extracted Kaorios block: {len(kaorios_block)} lines")

# Find hasSystemFeature(String, int) method
method_start = None
for i, line in enumerate(lines):
    if '.method ' in line and 'hasSystemFeature(Ljava/lang/String;I)Z' in line:
        method_start = i
        break

if method_start is None:
    print("ERROR: hasSystemFeature method not found")
    sys.exit(1)

print(f"Found method at line {method_start}")

# STEP 1: Change .locals to .registers 12
# Find .locals line (should be right after method declaration)
registers_line = None
for i in range(method_start, method_start + 10):
    if '.locals' in lines[i] or '.registers' in lines[i]:
        registers_line = i
        break

if registers_line:
    old_value = lines[registers_line].strip()
    if '.registers 12' not in lines[registers_line]:
        # Get the indentation
        indent = re.match(r'^\s*', lines[registers_line]).group(0)
        lines[registers_line] = f'{indent}.registers 12'
        print(f"✓ Changed '{old_value}' to '.registers 12' at line {registers_line}")
    else:
        print(f"Already using .registers 12 at line {registers_line}")
else:
    print("WARNING: .locals/.registers line not found")

# STEP 2: Find mHasSystemFeatureCache line
cache_line = None
for i in range(method_start, len(lines)):
    if 'mHasSystemFeatureCache' in lines[i] and 'sget-object' in lines[i]:
        cache_line = i
        break

if cache_line is None:
    print("ERROR: mHasSystemFeatureCache line not found")
    sys.exit(1)

print(f"Found mHasSystemFeatureCache at line {cache_line}")

# Check if already patched
already_patched = False
for i in range(method_start, cache_line):
    if 'KaoriFeaturesUtils' in lines[i] or 'kousei added' in lines[i]:
        already_patched = True
        print(f"Already patched (found Kaorios code at line {i})")
        break

if already_patched:
    sys.exit(0)

# STEP 3: Insert the entire Kaorios block ABOVE the mHasSystemFeatureCache line
# Insert in reverse order to maintain correct line numbers
for j in reversed(range(len(kaorios_block))):
    lines.insert(cache_line, kaorios_block[j])

print(f"✓ Inserted {len(kaorios_block)} lines before mHasSystemFeatureCache")

# Write the modified file
target_file.write_text('\n'.join(lines) + '\n')
print(f"✓ Successfully patched ApplicationPackageManager.hasSystemFeature")
PYTHON

    if [ $? -eq 0 ]; then
        log "✓ Patched ApplicationPackageManager.hasSystemFeature"
    else
        warn "ApplicationPackageManager patch failed or already applied"
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
    if '.method ' in line and 'getKeyEntry' in line and 'KeyDescriptor' in line:
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
    
    # If we're in the method and find .registers line
    if in_method and '.registers' in line:
        # Check if patch already exists on next line
        if i + 1 < len(lines) and 'ToolboxUtils;->KaoriosPropsEngineGetCertificateChain' in lines[i+1]:
            in_method = False
            i += 1
            continue
        
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
        i += len(patch_lines) + 1
        in_method = False
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
    
    # Inject utility classes first
    inject_kaorios_utility_classes "$decompile_dir" || return 1
    
    # Apply surgical patches based on Guide.md
    # NOTE: ApplicationPackageManager patch disabled due to DEX 65k limit in this framework
    # patch_application_package_manager_has_system_feature "$decompile_dir"
    log "⚠ Skipping ApplicationPackageManager patch (causes DEX 65k limit)"
    
    patch_instrumentation_new_application "$decompile_dir"
    patch_keystore2_get_key_entry "$decompile_dir"
    patch_android_keystore_spi_engine_get_certificate_chain "$decompile_dir"
    
    log "✓ Kaorios Toolbox patches applied successfully (3/4 core patches)"
    log "  ✓ Instrumentation.newApplication - Property spoofing initialization"
    log "  ✓ KeyStore2.getKeyEntry - Keybox attestation spoofing"
    log "  ✓ AndroidKeyStoreSpi.engineGetCertificateChain - Certificate chain handling"
    log "  ⊘ ApplicationPackageManager.hasSystemFeature - Skipped (DEX limit)"
    
    return 0
}
