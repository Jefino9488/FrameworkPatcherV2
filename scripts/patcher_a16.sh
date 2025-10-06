#!/usr/bin/env bash
# patcher_a16.sh - Android 16 framework/services patcher

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${SCRIPT_DIR}/helper.sh"

# ----------------------------------------------
# Internal helpers (python-powered transformations)
# ----------------------------------------------

insert_line_before_all() {
    local file="$1"
    local pattern="$2"
    local new_line="$3"

    python3 - <<'PY' "$file" "$pattern" "$new_line"
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
pattern = sys.argv[2]
new_line = sys.argv[3]

if not path.exists():
    sys.exit(4)

lines = path.read_text().splitlines()
matched = False
changed = False

i = 0
while i < len(lines):
    line = lines[i]
    if pattern in line:
        matched = True
        indent = re.match(r"\s*", line).group(0)
        candidate = f"{indent}{new_line}"
        if i > 0 and lines[i - 1].strip() == new_line.strip():
            i += 1
            continue
        lines.insert(i, candidate)
        changed = True
        i += 2
    else:
        i += 1

if not matched:
    sys.exit(3)

if changed:
    path.write_text("\n".join(lines) + "\n")
PY

    local status=$?
    case "$status" in
        0)
            log "Inserted '${new_line}' before lines containing pattern '${pattern##*/}' in $(basename "$file")"
            ;;
        3)
            warn "Pattern '${pattern}' not found in $(basename "$file")"
            ;;
        4)
            warn "File not found: $file"
            ;;
        *)
            err "Failed to insert '${new_line}' in $file (status $status)"
            return 1
            ;;
    esac

    return 0
}

insert_const_before_condition_near_string() {
    local file="$1"
    local search_string="$2"
    local condition_prefix="$3"
    local register="$4"
    local value="$5"

    python3 - <<'PY' "$file" "$search_string" "$condition_prefix" "$register" "$value"
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
search_string = sys.argv[2]
condition_prefix = sys.argv[3]
register = sys.argv[4]
value = sys.argv[5]

if not path.exists():
    sys.exit(4)

lines = path.read_text().splitlines()
matched = False
changed = False

for idx, line in enumerate(lines):
    if search_string in line:
        matched = True
        start = max(0, idx - 20)
        for j in range(idx - 1, start - 1, -1):
            stripped = lines[j].strip()
            if stripped.startswith(condition_prefix):
                indent = re.match(r"\s*", lines[j]).group(0)
                insert_line = f"{indent}const/4 {register}, 0x{value}"
                if j == 0 or lines[j - 1].strip() != f"const/4 {register}, 0x{value}":
                    lines.insert(j, insert_line)
                    changed = True
                break

if not matched:
    sys.exit(3)

if changed:
    path.write_text("\n".join(lines) + "\n")
PY

    local status=$?
    case "$status" in
        0)
            log "Inserted const for ${register} near condition '${condition_prefix}' in $(basename "$file")"
            ;;
        3)
            warn "Search string '${search_string}' not found in $(basename "$file")"
            ;;
        4)
            warn "File not found: $file"
            ;;
        *)
            err "Failed to patch condition in $file (status $status)"
            return 1
            ;;
    esac

    return 0
}

replace_move_result_after_invoke() {
    local file="$1"
    local invoke_pattern="$2"
    local replacement="$3"

    python3 - <<'PY' "$file" "$invoke_pattern" "$replacement"
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
invoke_pattern = sys.argv[2]
replacement = sys.argv[3]

if not path.exists():
    sys.exit(4)

lines = path.read_text().splitlines()
matched = False
changed = False

i = 0
while i < len(lines):
    line = lines[i]
    if invoke_pattern in line:
        matched = True
        for j in range(i + 1, min(i + 6, len(lines))):
            target = lines[j].strip()
            if target.startswith('move-result'):
                indent = re.match(r"\s*", lines[j]).group(0)
                desired = f"{indent}{replacement}"
                if target == replacement:
                    break
                if lines[j].strip() == replacement:
                    break
                lines[j] = desired
                changed = True
                break
        i = i + 1
    else:
        i += 1

if not matched:
    sys.exit(3)

if changed:
    path.write_text("\n".join(lines) + "\n")
PY

    local status=$?
    case "$status" in
        0)
            log "Replaced move-result after invoke '${invoke_pattern##*/}' in $(basename "$file")"
            ;;
        3)
            warn "Invoke pattern '${invoke_pattern}' not found in $(basename "$file")"
            ;;
        4)
            warn "File not found: $file"
            ;;
        *)
            err "Failed to replace move-result in $file (status $status)"
            return 1
            ;;
    esac

    return 0
}

force_methods_return_const() {
    local file="$1"
    local method_substring="$2"
    local ret_val="$3"

    if [ -z "$file" ]; then
        warn "force_methods_return_const: skipped empty file path for '${method_substring}'"
        return 0
    fi

    if [ ! -f "$file" ]; then
        warn "force_methods_return_const: file not found $file"
        return 0
    fi

    python3 - <<'PY' "$file" "$method_substring" "$ret_val"
from pathlib import Path
import sys

path = Path(sys.argv[1])
method_key = sys.argv[2]
ret_val = sys.argv[3]

if not path.exists():
    sys.exit(4)

lines = path.read_text().splitlines()
found = 0
modified = 0
const_line = f"const/4 v0, 0x{ret_val}"

i = 0
while i < len(lines):
    stripped = lines[i].lstrip()
    if stripped.startswith('.method') and method_key in stripped:
        if ')V' in stripped:
            i += 1
            continue
        found += 1
        j = i + 1
        while j < len(lines) and not lines[j].lstrip().startswith('.end method'):
            j += 1
        if j >= len(lines):
            break
        body = lines[i:j+1]
        already = (
            len(body) >= 4
            and body[1].strip() == '.registers 8'
            and body[2].strip() == const_line
            and body[3].strip().startswith('return')
        )
        if already:
            i = j + 1
            continue
        stub = [
            lines[i],
            '    .registers 8',
            f'    {const_line}',
            '    return v0',
            '.end method'
        ]
        lines[i:j+1] = stub
        modified += 1
        i = i + len(stub)
    else:
        i += 1

if modified:
    path.write_text('\n'.join(lines) + '\n')

if found == 0:
    sys.exit(3)
PY

    local status=$?
    case "$status" in
        0)
            log "Set return constant 0x${ret_val} for methods containing '${method_substring}' in $(basename "$file")"
            ;;
        3)
            warn "No methods containing '${method_substring}' found in $(basename "$file")"
            ;;
        4)
            warn "File not found: $file"
            ;;
        *)
            err "Failed to rewrite methods '${method_substring}' in $file (status $status)"
            return 1
            ;;
    esac

    return 0
}

replace_if_block_in_strict_jar_file() {
    local file="$1"

    python3 - <<'PY' "$file"
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
if not path.exists():
    sys.exit(4)

lines = path.read_text().splitlines()
changed = False

for idx, line in enumerate(lines):
    if 'invoke-virtual {p0, v5}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;' in line:
        # locate if-eqz v6
        if_idx = None
        for j in range(idx + 1, min(idx + 12, len(lines))):
            stripped = lines[j].strip()
            if stripped.startswith('if-eqz v6, :cond_'):
                if_idx = j
                break
        if if_idx is not None:
            del lines[if_idx]
            changed = True
        # adjust label
        for j in range(idx + 1, min(idx + 20, len(lines))):
            stripped = lines[j].strip()
            if re.match(r':cond_[0-9a-zA-Z_]+', stripped):
                indent = re.match(r'\s*', lines[j]).group(0)
                label = stripped
                # ensure a nop directly after label
                if j + 1 < len(lines) and lines[j + 1].strip() == 'nop':
                    break
                lines.insert(j + 1, f'{indent}nop')
                lines[j] = f'{indent}{label}'
                changed = True
                break
        break

if changed:
    path.write_text('\n'.join(lines) + '\n')
PY

    local status=$?
    case "$status" in
        0)
            log "Removed if-eqz guard in $(basename "$file")"
            ;;
        4)
            warn "StrictJarFile.smali not found"
            ;;
        *)
            err "Failed to adjust StrictJarFile (status $status)"
            return 1
            ;;
    esac

    return 0
}

patch_reconcile_clinit() {
    local file="$1"

    python3 - <<'PY' "$file"
from pathlib import Path
import sys

path = Path(sys.argv[1])
if not path.exists():
    sys.exit(4)

lines = path.read_text().splitlines()
changed = False

for idx, line in enumerate(lines):
    if '.method static constructor <clinit>()V' in line:
        for j in range(idx + 1, len(lines)):
            stripped = lines[j].strip()
            if stripped == '.end method':
                break
            if stripped == 'const/4 v0, 0x0':
                lines[j] = lines[j].replace('0x0', '0x1')
                changed = True
                break
        break

if changed:
    path.write_text('\n'.join(lines) + '\n')
PY

    local status=$?
    case "$status" in
        0)
            log "Updated <clinit> constant in $(basename "$file")"
            ;;
        4)
            warn "ReconcilePackageUtils.smali not found"
            ;;
        *)
            err "Failed to patch ReconcilePackageUtils (status $status)"
            return 1
            ;;
    esac

    return 0
}

ensure_const_before_if_for_register() {
    local file="$1"
    local invoke_pattern="$2"
    local condition_prefix="$3"
    local register="$4"
    local value="$5"

    python3 - <<'PY' "$file" "$invoke_pattern" "$condition_prefix" "$register" "$value"
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
invoke_pattern = sys.argv[2]
condition_prefix = sys.argv[3]
register = sys.argv[4]
value = sys.argv[5]

if not path.exists():
    sys.exit(4)

lines = path.read_text().splitlines()
matched = False
changed = False

for idx, line in enumerate(lines):
    if invoke_pattern in line:
        matched = True
        for j in range(max(0, idx - 1), max(0, idx - 10), -1):
            stripped = lines[j].strip()
            if stripped.startswith(condition_prefix):
                indent = re.match(r'\s*', lines[j]).group(0)
                insert_line = f'{indent}const/4 {register}, 0x{value}'
                if j == 0 or lines[j - 1].strip() != f'const/4 {register}, 0x{value}':
                    lines.insert(j, insert_line)
                    changed = True
                break

if not matched:
    sys.exit(3)

if changed:
    path.write_text('\n'.join(lines) + '\n')
PY

    local status=$?
    case "$status" in
        0)
            log "Forced ${register} to 0x${value} before condition '${condition_prefix}' in $(basename "$file")"
            ;;
        3)
            warn "Invoke pattern '${invoke_pattern}' not found in $(basename "$file")"
            ;;
        4)
            warn "File not found: $file"
            ;;
        *)
            err "Failed to enforce const on ${register} in $file (status $status)"
            return 1
            ;;
    esac

    return 0
}

# ----------------------------------------------
# Framework patches (Android 16)
# ----------------------------------------------

patch_framework() {
    local framework_path="${WORK_DIR}/framework.jar"

    if [ ! -f "$framework_path" ]; then
        err "framework.jar not found at $framework_path"
        return 1
    fi

    log "Starting Android 16 framework.jar patch"
    local decompile_dir
    decompile_dir=$(decompile_jar "$framework_path") || return 1

    local pkg_parser_file
    pkg_parser_file=$(find "$decompile_dir" -type f -path "*/android/content/pm/PackageParser.smali" | head -n1)
    if [ -n "$pkg_parser_file" ]; then
        insert_line_before_all "$pkg_parser_file" "ApkSignatureVerifier;->unsafeGetCertsWithoutVerification" "const/4 v1, 0x1"
        insert_const_before_condition_near_string "$pkg_parser_file" '<manifest> specifies bad sharedUserId name' "if-nez v14, :" "v14" "1"
    else
        warn "PackageParser.smali not found"
    fi

    local pkg_parser_exception_file
    pkg_parser_exception_file=$(find "$decompile_dir" -type f -path "*/android/content/pm/PackageParser\$PackageParserException.smali" | head -n1)
    if [ -n "$pkg_parser_exception_file" ]; then
        insert_line_before_all "$pkg_parser_exception_file" 'iput p1, p0, Landroid/content/pm/PackageParser$PackageParserException;->error:I' "const/4 p1, 0x0"
    else
        warn 'PackageParser$PackageParserException.smali not found'
    fi

    local pkg_signing_details_file
    pkg_signing_details_file=$(find "$decompile_dir" -type f -path "*/android/content/pm/PackageParser\$SigningDetails.smali" | head -n1)
    if [ -n "$pkg_signing_details_file" ]; then
        force_methods_return_const "$pkg_signing_details_file" "checkCapability" "1"
    else
        warn 'PackageParser$SigningDetails.smali not found'
    fi

    local signing_details_file
    signing_details_file=$(find "$decompile_dir" -type f -path "*/android/content/pm/SigningDetails.smali" | head -n1)
    if [ -n "$signing_details_file" ]; then
        force_methods_return_const "$signing_details_file" "checkCapability" "1"
        force_methods_return_const "$signing_details_file" "checkCapabilityRecover" "1"
        force_methods_return_const "$signing_details_file" "hasAncestorOrSelf" "1"
    else
        warn "SigningDetails.smali not found"
    fi

    local apk_sig_scheme_v2_file
    apk_sig_scheme_v2_file=$(find "$decompile_dir" -type f -path "*/android/util/apk/ApkSignatureSchemeV2Verifier.smali" | head -n1)
    if [ -n "$apk_sig_scheme_v2_file" ]; then
        replace_move_result_after_invoke "$apk_sig_scheme_v2_file" "invoke-static {v8, v4}, Ljava/security/MessageDigest;->isEqual([B[B)Z" "const/4 v0, 0x1"
    else
        warn "ApkSignatureSchemeV2Verifier.smali not found"
    fi

    local apk_sig_scheme_v3_file
    apk_sig_scheme_v3_file=$(find "$decompile_dir" -type f -path "*/android/util/apk/ApkSignatureSchemeV3Verifier.smali" | head -n1)
    if [ -n "$apk_sig_scheme_v3_file" ]; then
        replace_move_result_after_invoke "$apk_sig_scheme_v3_file" "invoke-static {v9, v3}, Ljava/security/MessageDigest;->isEqual([B[B)Z" "const/4 v0, 0x1"
    else
        warn "ApkSignatureSchemeV3Verifier.smali not found"
    fi

    local apk_signature_verifier_file
    apk_signature_verifier_file=$(find "$decompile_dir" -type f -path "*/android/util/apk/ApkSignatureVerifier.smali" | head -n1)
    if [ -n "$apk_signature_verifier_file" ]; then
        force_methods_return_const "$apk_signature_verifier_file" "getMinimumSignatureSchemeVersionForTargetSdk" "0"
        insert_line_before_all "$apk_signature_verifier_file" "ApkSignatureVerifier;->verifyV1Signature" "const/4 p3, 0x0"
    else
        warn "ApkSignatureVerifier.smali not found"
    fi

    local apk_signing_block_utils_file
    apk_signing_block_utils_file=$(find "$decompile_dir" -type f -path "*/android/util/apk/ApkSigningBlockUtils.smali" | head -n1)
    if [ -n "$apk_signing_block_utils_file" ]; then
        replace_move_result_after_invoke "$apk_signing_block_utils_file" "invoke-static {v5, v6}, Ljava/security/MessageDigest;->isEqual([B[B)Z" "const/4 v7, 0x1"
    else
        warn "ApkSigningBlockUtils.smali not found"
    fi

    local strict_jar_verifier_file
    strict_jar_verifier_file=$(find "$decompile_dir" -type f -path "*/android/util/jar/StrictJarVerifier.smali" | head -n1)
    if [ -n "$strict_jar_verifier_file" ]; then
        force_methods_return_const "$strict_jar_verifier_file" "verifyMessageDigest" "1"
    else
        warn "StrictJarVerifier.smali not found"
    fi

    local strict_jar_file_file
    strict_jar_file_file=$(find "$decompile_dir" -type f -path "*/android/util/jar/StrictJarFile.smali" | head -n1)
    if [ -n "$strict_jar_file_file" ]; then
        replace_if_block_in_strict_jar_file "$strict_jar_file_file"
    else
        warn "StrictJarFile.smali not found"
    fi

    local parsing_package_utils_file
    parsing_package_utils_file=$(find "$decompile_dir" -type f -path "*/com/android/internal/pm/pkg/parsing/ParsingPackageUtils.smali" | head -n1)
    if [ -n "$parsing_package_utils_file" ]; then
        insert_const_before_condition_near_string "$parsing_package_utils_file" '<manifest> specifies bad sharedUserId name' "if-eqz v4, :" "v4" "0"
    else
        warn "ParsingPackageUtils.smali not found"
    fi

    modify_invoke_custom_methods "$decompile_dir"

    recompile_jar "$framework_path" >/dev/null
    rm -rf "$decompile_dir" "$WORK_DIR/framework"
    log "Completed framework.jar patching"
}

# ----------------------------------------------
# Services patches (Android 16)
# ----------------------------------------------

patch_services() {
    local services_path="${WORK_DIR}/services.jar"

    if [ ! -f "$services_path" ]; then
        err "services.jar not found at $services_path"
        return 1
    fi

    log "Starting Android 16 services.jar patch"
    local decompile_dir
    decompile_dir=$(decompile_jar "$services_path") || return 1

    patch_return_void_method "checkDowngrade" "$decompile_dir"

    local method_file

    method_file=$(find_smali_method_file "$decompile_dir" "shouldCheckUpgradeKeySetLocked")
    if [ -n "$method_file" ]; then
        force_methods_return_const "$method_file" "shouldCheckUpgradeKeySetLocked" "0"
    else
        warn "shouldCheckUpgradeKeySetLocked not found in services.jar"
    fi

    method_file=$(grep -rl --include="*.smali" "^[[:space:]]*\\.method.* verifySignatures" "$decompile_dir" 2>/dev/null | head -n1)
    if [ -n "$method_file" ]; then
        force_methods_return_const "$method_file" "verifySignatures" "0"
    else
        warn "verifySignatures not found in services.jar"
    fi

    method_file=$(grep -rl --include="*.smali" "^[[:space:]]*\\.method.* compareSignatures" "$decompile_dir" 2>/dev/null | head -n1)
    if [ -n "$method_file" ]; then
        force_methods_return_const "$method_file" "compareSignatures" "0"
    else
        warn "compareSignatures not found in services.jar"
    fi

    method_file=$(grep -rl --include="*.smali" "^[[:space:]]*\\.method.* matchSignaturesCompat" "$decompile_dir" 2>/dev/null | head -n1)
    if [ -n "$method_file" ]; then
        force_methods_return_const "$method_file" "matchSignaturesCompat" "1"
    else
        warn "matchSignaturesCompat not found in services.jar"
    fi

    # Locate the exact smali file containing the isLeavingSharedUser() invoke and apply the guard override
    local invoke_pattern="invoke-interface {p5}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z"
    local install_package_helper_file
    install_package_helper_file=$(grep -rl --include="*.smali" "$invoke_pattern" "$decompile_dir" 2>/dev/null | head -n1)
    if [ -n "$install_package_helper_file" ]; then
        ensure_const_before_if_for_register "$install_package_helper_file" "$invoke_pattern" "if-eqz v3, :" "v3" "1"
    else
        warn "No file containing pattern found: $invoke_pattern"
    fi

    local reconcile_package_utils_file
    reconcile_package_utils_file=$(find "$decompile_dir" -type f -path "*/com/android/server/pm/ReconcilePackageUtils.smali" | head -n1)
    if [ -n "$reconcile_package_utils_file" ]; then
        patch_reconcile_clinit "$reconcile_package_utils_file"
    else
        warn "ReconcilePackageUtils.smali not found"
    fi

    modify_invoke_custom_methods "$decompile_dir"

    # Emit robust verification logs for CI (avoid brittle hardcoded file paths)
    log "[VERIFY] services: locating isLeavingSharedUser invoke (context)"
    grep -R -n --include='*.smali' \
      'invoke-interface {p5}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z' \
      "$decompile_dir" | head -n 1 || true

    log "[VERIFY] services: verifySignatures/compareSignatures/matchSignaturesCompat presence"
    grep -R -n --include='*.smali' '^[[:space:]]*\\.method.* verifySignatures' "$decompile_dir" | head -n 1 || true
    grep -R -n --include='*.smali' '^[[:space:]]*\\.method.* compareSignatures' "$decompile_dir" | head -n 1 || true
    grep -R -n --include='*.smali' '^[[:space:]]*\\.method.* matchSignaturesCompat' "$decompile_dir" | head -n 1 || true

    log "[VERIFY] services: ReconcilePackageUtils <clinit> toggle lines"
    local rpu_file
    rpu_file=$(find "$decompile_dir" -type f -path "*/com/android/server/pm/ReconcilePackageUtils.smali" | head -n1)
    if [ -n "$rpu_file" ]; then
        grep -n '^[[:space:]]*\\.method static constructor <clinit>()V' "$rpu_file" || true
        grep -n 'const/4 v0, 0x[01]' "$rpu_file" | head -n 5 || true
    fi

    recompile_jar "$services_path" >/dev/null
    rm -rf "$decompile_dir" "$WORK_DIR/services"
    log "Completed services.jar patching"
}

# ----------------------------------------------
# MIUI services patches (Android 16)
# ----------------------------------------------

patch_miui_services() {
    local miui_services_path="${WORK_DIR}/miui-services.jar"

    if [ ! -f "$miui_services_path" ]; then
        err "miui-services.jar not found at $miui_services_path"
        return 1
    fi

    log "Starting Android 16 miui-services.jar patch"
    local decompile_dir
    decompile_dir=$(decompile_jar "$miui_services_path") || return 1

    patch_return_void_method "verifyIsolationViolation" "$decompile_dir"
    patch_return_void_method "canBeUpdate" "$decompile_dir"

    modify_invoke_custom_methods "$decompile_dir"

    recompile_jar "$miui_services_path" >/dev/null
    rm -rf "$decompile_dir" "$WORK_DIR/miui-services"
    log "Completed miui-services.jar patching"
}

# ----------------------------------------------
# Main entrypoint
# ----------------------------------------------

main() {
    if [ $# -lt 3 ]; then
        echo "Usage: $0 <api_level> <device_name> <version_name> [--framework] [--services] [--miui-services]" >&2
        exit 1
    fi

    local api_level="$1"
    local device_name="$2"
    local version_name="$3"
    shift 3

    local patch_framework_flag=0
    local patch_services_flag=0
    local patch_miui_services_flag=0

    while [ $# -gt 0 ]; do
        case "$1" in
            --framework)
                patch_framework_flag=1
                ;;
            --services)
                patch_services_flag=1
                ;;
            --miui-services)
                patch_miui_services_flag=1
                ;;
            *)
                echo "Unknown option: $1" >&2
                exit 1
                ;;
        esac
        shift
    done

    if [ $patch_framework_flag -eq 0 ] && [ $patch_services_flag -eq 0 ] && [ $patch_miui_services_flag -eq 0 ]; then
        patch_framework_flag=1
        patch_services_flag=1
        patch_miui_services_flag=1
    fi

    init_env
    ensure_tools || exit 1

    if [ $patch_framework_flag -eq 1 ]; then
        patch_framework
    fi

    if [ $patch_services_flag -eq 1 ]; then
        patch_services
    fi

    if [ $patch_miui_services_flag -eq 1 ]; then
        patch_miui_services
    fi

    create_magisk_module "$api_level" "$device_name" "$version_name"

    log "Android 16 patching completed successfully"
}

main "$@"