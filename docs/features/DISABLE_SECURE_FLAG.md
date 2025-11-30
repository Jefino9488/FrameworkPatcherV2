# Disable Secure Flag

## Overview

The Disable Secure Flag feature removes Android's secure window flags that prevent taking screenshots or screen recordings of protected content.

## Status

- **Android 15**: Fully Implemented
- **Android 16**: Fully Implemented

## Problem Description

Android implements secure window flags (FLAG_SECURE) to protect sensitive content from being captured. This affects:

- Banking and payment applications
- DRM-protected video content
- Secure keyboard inputs
- Password entry screens
- Proprietary business applications

While this provides security, it can also prevent legitimate uses like:
- Documenting app issues for support
- Creating tutorials or guides
- Taking notes from banking statements
- Recording video calls

## Solution

This patch modifies two key methods to always return false, effectively disabling the secure flag checks.

## Technical Implementation

### Target Files

- **services.jar**: Window manager secure check
- **miui-services.jar**: MIUI display capture check

### Methods Modified

#### Android 15

**1. services.jar**

**Class:** `com.android.server.wm.WindowManagerServiceStub`
**Method:** `isSecureLocked()Z`

**Implementation:**
```smali
.method isSecureLocked()Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method
```

**2. miui-services.jar**

**Class:** `com.android.server.wm.WindowManagerServiceImpl`
**Method:** `notAllowCaptureDisplay(Lcom/android/server/wm/RootWindowContainer;I)Z`

**Implementation:**
```smali
.method public notAllowCaptureDisplay(Lcom/android/server/wm/RootWindowContainer;I)Z
    .registers 9

    const/4 v0, 0x0

    return v0
.end method
```

#### Android 16

**1. services.jar**

**Class:** `com.android.server.wm.WindowState` (Different from Android 15)
**Method:** `isSecureLocked()Z`

**Implementation:**
```smali
.method isSecureLocked()Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method
```

**2. miui-services.jar**

**Class:** `com.android.server.wm.WindowManagerServiceImpl` (Same as Android 15)
**Method:** `notAllowCaptureDisplay(Lcom/android/server/wm/RootWindowContainer;I)Z`

**Implementation:**
```smali
.method public notAllowCaptureDisplay(Lcom/android/server/wm/RootWindowContainer;I)Z
    .registers 9

    const/4 v0, 0x0

    return v0
.end method
```

### Key Differences Between Versions

- **Android 15**: Uses `WindowManagerServiceStub` class
- **Android 16**: Uses `WindowState` class
- **Both**: Same `WindowManagerServiceImpl.notAllowCaptureDisplay()` in miui-services

## Usage

### Command Line

**Android 15:**
```bash
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 --disable-secure-flag
```

**Android 16:**
```bash
./scripts/patcher_a16.sh 36 xiaomi 1.0.0 --disable-secure-flag
```

**Combined with signature bypass:**
```bash
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 \
  --disable-signature-verification \
  --disable-secure-flag
```

**Efficient (services + miui-services only):**
```bash
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 \
  --services --miui-services \
  --disable-secure-flag
```

### Other Platforms

- **GitHub Actions**: Enable "Disable secure flag" checkbox
- **Web Interface**: Check "Disable Secure Flag" option
- **Telegram Bot**: Toggle secure flag button

## Requirements

- services.jar present in ROM
- miui-services.jar (for MIUI ROMs)
- Android 15 or Android 16

## Security Considerations

### What This Enables

- Screenshots of banking/payment screens
- Recording of DRM-protected content
- Capture of secure keyboards
- Screenshots during password entry

### Risks

- **Banking credentials** may be captured by malicious apps
- **DRM restrictions** are bypassed
- **Sensitive information** becomes screenshot-able
- **Secure input methods** can be recorded

### Recommendations

- **Use responsibly** and understand the implications
- **Keep device secure** with strong lock screen
- **Be cautious** with installed applications
- **Monitor permissions** of screenshot-capable apps
- **Consider alternatives** like screen dimming overlays

## Verification

After patching, verify the changes:

```bash
# Decompile services.jar
apktool d services_patched.jar -o verify_services

# Check isSecureLocked method (Android 15)
grep -A 5 "\.method.*isSecureLocked" \
  verify_services/smali*/com/android/server/wm/WindowManagerServiceStub.smali

# Check isSecureLocked method (Android 16)
grep -A 5 "\.method.*isSecureLocked" \
  verify_services/smali*/com/android/server/wm/WindowState.smali

# Decompile miui-services.jar
apktool d miui-services_patched.jar -o verify_miui

# Check notAllowCaptureDisplay method
grep -A 5 "\.method.*notAllowCaptureDisplay" \
  verify_miui/smali*/com/android/server/wm/WindowManagerServiceImpl.smali
```

Expected: Both methods should return const/4 v0, 0x0 immediately.

## Troubleshooting

### Class Not Found (Android 15)

**Issue:** WindowManagerServiceStub.smali not found

**Cause:** ROM may not include this class

**Solution:** Verify using correct Android version patcher. Some ROMs may have different class structures.

### Class Not Found (Android 16)

**Issue:** WindowState.smali not found

**Cause:** ROM may not include this class

**Solution:** Verify Android version. Different ROM builds may vary.

### WindowManagerServiceImpl Not Found

**Issue:** Class not found in miui-services

**Cause:** Non-MIUI ROM

**Solution:** This is normal for non-MIUI ROMs. The services.jar patch should still work.

### Screenshots Still Blocked

**Possible Causes:**
1. Module not installed correctly
2. Device not rebooted
3. App has additional client-side protection
4. Wrong Android version patcher used

**Solutions:**
1. Verify module active in root manager
2. Reboot device
3. Some apps implement additional screenshot prevention at app level
4. Use correct patcher for your Android version

## Notes

- This feature does not affect framework.jar
- Both services.jar and miui-services.jar are modified
- The patches are independent of other features
- Can be combined with any other features
- Android version determines which class is patched in services.jar

## Related Documentation

- [FEATURE_SYSTEM.md](./FEATURE_SYSTEM.md) - Overall feature system
- [USAGE.md](./USAGE.md) - Complete usage guide
- [CHANGELOG.md](../CHANGELOG.md) - Version history
