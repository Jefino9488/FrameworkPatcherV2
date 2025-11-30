# CN Notification Fix

## Overview

The CN Notification Fix addresses notification delays on MIUI China ROM devices by patching the IS_INTERNATIONAL_BUILD boolean checks to always return true.

## Status

- **Android 15**: Fully Implemented
- **Android 16**: Fully Implemented

## Problem Description

China ROM versions of MIUI implement aggressive background restrictions and notification delays based on the IS_INTERNATIONAL_BUILD flag. When this flag returns false (indicating a China ROM), the system applies various limitations that cause:

- Delayed push notifications
- Background app restrictions
- Notification delivery issues
- Message receipt delays

## Solution

This patch modifies the IS_INTERNATIONAL_BUILD checks to always return true, effectively making the system treat the ROM as an international build for notification processing purposes.

## Technical Implementation

### Target File

- **File**: miui-services.jar
- **Location**: /system_ext/framework/miui-services.jar

### Classes Modified

#### 1. BroadcastQueueModernStubImpl

**Class:** `com.android.server.am.BroadcastQueueModernStubImpl`

**Pattern:**
```smali
# Before
sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

# After
const/4 v2, 0x1
```

#### 2. ActivityManagerServiceImpl

**Class:** `com.android.server.am.ActivityManagerServiceImpl`

**Locations:** 2 occurrences with different registers

**Pattern 1:**
```smali
# Before
sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

# After
const/4 v1, 0x1
```

**Pattern 2:**
```smali
# Before
sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

# After
const/4 v4, 0x1
```

#### 3. ProcessManagerService

**Class:** `com.android.server.am.ProcessManagerService`

**Pattern:**
```smali
# Before
sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

# After
const/4 v0, 0x1
```

#### 4. ProcessSceneCleaner

**Class:** `com.android.server.am.ProcessSceneCleaner`

**Android 15:**
```smali
# Before
sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

# After
const/4 v0, 0x1
```

**Android 16:**
```smali
# Before
sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

# After
const/4 v0, 0x1
```

Note: Android 16 changes the register from v4 to v0.

## Usage

### Command Line

**Android 15:**
```bash
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 --cn-notification-fix
```

**Android 16:**
```bash
./scripts/patcher_a16.sh 36 xiaomi 1.0.0 --cn-notification-fix
```

**Combined with signature bypass:**
```bash
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 \
  --disable-signature-verification \
  --cn-notification-fix
```

**Efficient (miui-services only):**
```bash
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 \
  --miui-services \
  --cn-notification-fix
```

### Other Platforms

- **GitHub Actions**: Enable "CN notification fix" checkbox
- **Web Interface**: Check "CN Notification Fix" option
- **Telegram Bot**: Toggle CN notification fix button

## Requirements

- MIUI-based ROM (China variant)
- miui-services.jar present in ROM
- Android 15 or Android 16

## Verification

After patching, verify the changes:

```bash
# Decompile patched JAR
apktool d miui-services_patched.jar -o verify

# Check if IS_INTERNATIONAL_BUILD was replaced
grep -r "IS_INTERNATIONAL_BUILD" verify/
# Should return no results if successful

# Check for const/4 replacements
grep -r "const/4 v[0124], 0x1" verify/ | \
  grep -E "(BroadcastQueue|ActivityManager|ProcessManager|ProcessScene)"
```

## Troubleshooting

### Class Not Found

**Issue:** Warning messages about classes not being found

**Solution:** This is normal if your ROM doesn't include all classes. The patcher will skip missing classes gracefully.

### Notifications Still Delayed

**Possible Causes:**
1. Module not installed correctly
2. Device not rebooted after installation
3. ROM is not a China variant
4. ROM version doesn't have these classes

**Solution:**
1. Verify module is active in root manager
2. Reboot device
3. Check logcat for any errors
4. Verify using MIUI China ROM variant

### No Effect After Patching

**Possible Causes:**
1. Wrong Android version patcher used
2. ROM already patched or modified
3. ROM is international build (patch not needed)

**Solution:**
1. Verify Android version matches patcher
2. Use unmodified ROM JARs
3. Check if using China ROM variant

## Notes

- This feature is MIUI-specific and has no effect on non-MIUI ROMs
- The patch only affects notification timing, not app permissions
- Combines safely with other features
- No framework.jar or services.jar changes needed

## Related Documentation

- [FEATURE_SYSTEM.md](./FEATURE_SYSTEM.md) - Overall feature system
- [USAGE.md](./USAGE.md) - Complete usage guide
- [CHANGELOG.md](../CHANGELOG.md) - Version history
