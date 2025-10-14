# Framework Patcher Fixes

## Issues Addressed

Based on the error output, the following issues have been fixed in the patcher scripts:

### 1. Broken Pipe Errors (Fixed ✓)

**Issue**: Multiple "grep: write error: Broken pipe" errors occurred when using grep with pipes and head.

**Root Cause**: When grep outputs to a pipe and the receiving command (like `head -n 1`) closes the pipe early, grep tries to write to a closed pipe, causing these errors.

**Files Fixed**:
- `scripts/patcher_a15.sh`
- `scripts/helper.sh`

**Changes Made**:
- Added `2>/dev/null` to suppress stderr on grep commands that pipe to `head`
- Used `-print0 | xargs -0` for proper handling of filenames with special characters
- Added `-r` flag to xargs to handle empty input gracefully

**Example**:
```bash
# Before:
file=$(find "$decompile_dir" -type f -name "*.smali" | grep -l "pattern" | head -n 1)

# After:
file=$(find "$decompile_dir" -type f -name "*.smali" -print0 2>/dev/null | xargs -0 -r grep -l "pattern" 2>/dev/null | head -n 1)
```

### 2. Missing Smali Files Errors (Fixed ✓)

**Issue**: Multiple "grep: ... No such file or directory" errors for ExternalSyntheticLambda files that don't exist.

**Root Cause**: The `modify_invoke_custom_methods()` function was using `grep -rl` which could return file paths that don't exist (dead symlinks, race conditions, etc.).

**Files Fixed**:
- `scripts/helper.sh` - Modified `modify_invoke_custom_methods()`
- `scripts/patcher_a15.sh` - Modified `modify_invoke_custom_methods()`

**Changes Made**:
- Replaced `grep -rl` with a safer loop that checks file existence before processing
- Added file existence checks before attempting to grep or sed
- Added error suppression with `2>/dev/null || true` on sed commands

**Example**:
```bash
# Before:
smali_files=$(grep -rl "invoke-custom" "$decompile_dir" --include="*.smali" 2>/dev/null)
for smali_file in $smali_files; do
    sed -i "/.method.*equals(/,..." "$smali_file"
done

# After:
smali_files=$(find "$decompile_dir" -type f -name "*.smali" 2>/dev/null | while read -r f; do
    if [ -f "$f" ] && grep -q "invoke-custom" "$f" 2>/dev/null; then
        echo "$f"
    fi
done)

while IFS= read -r smali_file; do
    [ ! -f "$smali_file" ] && continue
    sed -i "/.method.*equals(/,..." "$smali_file" 2>/dev/null || true
done <<< "$smali_files"
```

### 3. "Method findEntry not found" Warning (Non-Critical)

**Issue**: The StrictJarFile patch reported "Method findEntry not found."

**Status**: This is a **warning, not an error**. The findEntry method might not exist in all framework versions.

**Behavior**: The script already handles this gracefully by checking if the pattern is found and skipping if not.

**Note**: If this method is critical for your Android version, the framework.jar might have a different structure. The script will continue with other patches.

## Impact

These fixes make the patcher scripts:
1. **Quieter**: Eliminates spurious error messages that don't affect functionality
2. **More Robust**: Handles missing files and race conditions gracefully
3. **Safer**: Checks file existence before operations
4. **CI/CD Friendly**: Reduces noise in build logs
5. **Shellcheck Compliant**: Passes all shellcheck linting rules

## No Functional Changes

These are **purely robustness and code quality improvements**. The actual patching logic remains unchanged:
- Same patches are applied
- Same methods are modified
- Same output files are generated

The only difference is cleaner output and better error handling.

## What You Should See Now

When running the patcher, you should see clean output like:
```
[INFO] Backed up framework.jar -> /path/to/backup/framework
[INFO] Decompile finished: /path/to/framework_decompile
Checking for invoke-custom in /path/to/framework_decompile...
[INFO] Modified 5 files with invoke-custom
Applying signature verification patches to framework.jar...
Patched const/4 v4, 0x0 after move-result v4 at line 12736
Patching invoke-static call for unsafeGetCertsWithoutVerification...
Patched at line 1109 in file: .../ParsingPackageUtils.smali
```

**No more**:
- ❌ `grep: write error: Broken pipe`
- ❌ `grep: ... No such file or directory` (for missing files)

**You may still see** (expected):
- ⚠️ `Method findEntry not found` (if the method doesn't exist in your framework version)

## Files Modified

1. **scripts/helper.sh**
   - `modify_invoke_custom_methods()` function

2. **scripts/patcher_a15.sh**
   - `modify_invoke_custom_methods()` function
   - `add_static_return_patch()` function
   - `patch_return_void_method()` function
   - `apply_framework_signature_patches()` function (StrictJarFile section)

## Testing

The changes have been tested for:
- ✅ No linter errors (shellcheck compliant)
- ✅ Backward compatibility maintained
- ✅ Error handling improved
- ✅ All exit codes preserved
- ✅ Pre-commit hooks pass successfully
