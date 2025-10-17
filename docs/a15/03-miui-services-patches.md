# MIUI-Services.jar Patching Guide - Android 15 (HyperOS 2.0)

This guide provides detailed instructions for modifying `miui-services.jar` to allow system app updates from third-party sources on Android 15 / HyperOS 2.0.

## Table of Contents
1. [Overview](#overview)
2. [Allow Third-Party System App Updates](#1-allow-third-party-system-app-updates)
3. [Allow Critical System App Updates](#2-allow-critical-system-app-updates)

---

## Overview

The `miui-services.jar` file contains MIUI/HyperOS-specific system services. These patches specifically target restrictions that prevent updating system applications, particularly when those updates come from third-party sources (non-MIUI/Xiaomi app stores).

---

## 1. Allow Third-Party System App Updates

### Purpose
Enable installation of updates to system applications from third-party sources, bypassing MIUI's isolation violation checks.

### Method: `verifyIsolationViolation`

**Location:** Search across `miui-services.jar` for method named `verifyIsolationViolation`

**Action:** Replace the entire method body with:
```smali
return-void
```

**Purpose:** Disables the isolation violation check that prevents system apps from being updated by third-party installers.

**Context:** MIUI/HyperOS implements strict isolation policies to prevent system apps from being modified by non-system sources. This patch removes that restriction.

**Impact:**
- Allows sideloading of updates to system apps
- Enables installation from third-party app stores
- Bypasses MIUI's app isolation security layer

---

## 2. Allow Critical System App Updates

### Purpose
Enable updates to protected system applications like Settings and PowerKeeper, which are normally locked to prevent modifications.

### Method: `canBeUpdate`

**Location:** Search across `miui-services.jar` for method named `canBeUpdate`

**Action:** Replace the entire method body with:
```smali
return-void
```

**Purpose:** Removes the restriction that prevents certain critical system apps from being updated.

**Context:** MIUI/HyperOS marks specific system apps (Settings, PowerKeeper, Security Center, etc.) as non-updatable to maintain system stability. This patch removes that protection.

**Affected Applications:**
- **Settings** (`com.android.settings`) - System settings application
- **PowerKeeper** (`com.miui.powerkeeper`) - Battery and performance management
- **Security Center** (potentially, depending on implementation)
- Other MIUI core system apps

**Impact:**
- Allows updating locked system applications
- Enables customization of core MIUI/HyperOS components
- Removes manufacturer restrictions on system app modifications

---

## Summary

After applying all patches in this guide, `miui-services.jar` will:
- Allow system apps to be updated from any source (including third-party app stores)
- Remove update restrictions on critical system apps like Settings and PowerKeeper
- Bypass MIUI/HyperOS app isolation policies

## Method Location Reference

The methods in this guide are typically located in:
- `com.android.server.pm.PackageManagerServiceImpl` (or similar MIUI-specific package manager classes)
- MIUI-specific security/policy enforcement classes

**Note:** Exact class locations may vary between HyperOS versions. Use method name search to locate them.

---

## Warning

⚠️ **Security and Stability Impact:**

1. **System Stability Risk:** Updating system apps (especially Settings and PowerKeeper) with incompatible versions can cause:
   - System crashes
   - Boot loops
   - Loss of functionality
   - Performance degradation

2. **Security Risk:** Allowing third-party updates to system apps bypasses MIUI's security model:
   - Malicious apps could replace system components
   - App isolation protections are disabled
   - System integrity verification is bypassed

3. **Warranty Impact:** Modifying system apps may void your device warranty and violate MIUI's terms of service.

**Recommendations:**
- Only use on development/testing devices
- Always maintain backups of original JAR files
- Test updates carefully before applying to daily driver devices
- Be cautious when updating critical system components

---

## Practical Use Cases

These patches are useful for:
1. **Custom ROM Development:** Replacing MIUI system apps with custom alternatives
2. **Debloating:** Removing or replacing unwanted MIUI apps
3. **Feature Enhancement:** Installing modified versions of system apps with additional features
4. **Testing:** Testing system app updates during development
5. **Customization:** Using third-party alternatives to MIUI system apps

---

## Verification Steps

After patching:
1. Recompile `miui-services.jar`
2. Push to device: `/system/system_ext/framework/miui-services.jar`
3. Set correct permissions: `chmod 644 miui-services.jar`
4. Reboot device
5. Test by installing an update to Settings or PowerKeeper

**Test Installation:**
```bash
# Try updating a system app from ADB
adb install -r -d /path/to/modified_settings.apk
```

---

## Troubleshooting

### Device doesn't boot after patching
- **Solution:** Restore original `miui-services.jar` from backup
- **Prevention:** Ensure you completed [prerequisites](00-prerequisites.md) before patching

### System app update still fails
- **Solution:** Verify both `framework.jar` and `services.jar` are also patched
- **Check:** Some apps may have additional protections in other system components

### App crashes after update
- **Solution:** The updated app may be incompatible with your HyperOS version
- **Check:** Verify the app is designed for your Android/MIUI version

### Permission denied errors
- **Solution:** Ensure proper file permissions (644) and SELinux context
- **Command:** `restorecon -v /system/system_ext/framework/miui-services.jar`

---

## Complete Patching Workflow

For full signature verification bypass on HyperOS 2.0 (Android 15):

1. ✅ Complete [Prerequisites](00-prerequisites.md) - Clean `invoke-custom` methods
2. ✅ Apply [Framework Patches](01-framework-patches.md) - Disable signature verification
3. ✅ Apply [Services Patches](02-services-patches.md) - Bypass package validation
4. ✅ Apply [MIUI-Services Patches](03-miui-services-patches.md) - Remove MIUI restrictions (this guide)

---

## Additional Notes

### MIUI-Specific Considerations

- **HyperOS versions** may have additional protections not covered in this guide
- **Regional variants** (China vs Global) may have different class structures
- **Device-specific modifications** by Xiaomi may require additional patches

### Future Compatibility

These patches are specific to Android 15 / HyperOS 2.0. For other versions:
- Android 16: See [../a16/README.md](../../a16/README.md)
- Older versions: Method locations and register numbers may differ

---

## Credits

**Original Research:** @MMETMAmods  
**Documentation:** Framework Patcher V2 Project

---

## Related Documentation

- [Framework Patching Guide](01-framework-patches.md)
- [Services Patching Guide](02-services-patches.md)
- [APK Editor Documentation](../../apkeditor.md)
- [General Usage Guide](../../USAGE.md)

