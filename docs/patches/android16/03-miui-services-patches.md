# MIUI-Services.jar Patching Guide - Android 16

This guide provides detailed instructions for modifying `miui-services.jar` to allow system app updates from third-party sources on Android 16.

## Table of Contents
1. [Overview](#overview)
2. [Allow Third-Party System App Updates](#1-allow-third-party-system-app-updates)
3. [Allow Critical System App Updates](#2-allow-critical-system-app-updates)

---

## Overview

The `miui-services.jar` file contains MIUI/HyperOS-specific system services. These patches specifically target restrictions that prevent updating system applications, particularly when those updates come from third-party sources (non-MIUI/Xiaomi app stores).

### Android 16 Changes

In Android 16, MIUI/HyperOS has consolidated package management into `PackageManagerServiceImpl`, making the class location more explicit than in Android 15.

---

## 1. Allow Third-Party System App Updates

### Purpose
Enable installation of updates to system applications from third-party sources, bypassing MIUI's isolation violation checks.

### Class: `com.android.server.pm.PackageManagerServiceImpl`

### Method: `verifyIsolationViolation`

**Action:** Replace the entire method body with:
```smali
return-void
```

**Purpose:** Disables the isolation violation check that prevents system apps from being updated by third-party installers.

**Context:** MIUI/HyperOS implements strict isolation policies to prevent system apps from being modified by non-system sources. This patch removes that restriction.

**Impact:**
- Allows sideloading of updates to system apps
- Enables installation from third-party app stores (Play Store, F-Droid, Aurora, etc.)
- Bypasses MIUI's app isolation security layer
- Permits installation via ADB without system privileges

---

## 2. Allow Critical System App Updates

### Purpose
Enable updates to protected system applications like Settings and PowerKeeper, which are normally locked to prevent modifications.

### Class: `com.android.server.pm.PackageManagerServiceImpl`

### Method: `canBeUpdate`

**Action:** Replace the entire method body with:
```smali
return-void
```

**Purpose:** Removes the restriction that prevents certain critical system apps from being updated.

**Context:** MIUI/HyperOS marks specific system apps (Settings, PowerKeeper, Security Center, etc.) as non-updatable to maintain system stability. This patch removes that protection.

**Affected Applications:**
- **Settings** (`com.android.settings`) - System settings application
- **PowerKeeper** (`com.miui.powerkeeper`) - Battery and performance management
- **Security Center** (`com.miui.securitycenter`) - Security and privacy manager
- **System UI** (`com.android.systemui`) - Status bar and notifications (potentially)
- **GetApps** (`com.xiaomi.mipicks`) - MIUI app store (potentially)
- Other MIUI core system apps

**Impact:**
- Allows updating locked system applications
- Enables customization of core MIUI/HyperOS components
- Removes manufacturer restrictions on system app modifications
- Permits installation of modified system apps

---

## Android 16 vs Android 15 Differences

### Key Changes:

1. **Explicit Class Location:**
   - Android 15: Class location was ambiguous, requiring search
   - Android 16: Explicitly defined in `com.android.server.pm.PackageManagerServiceImpl`

2. **Method Consolidation:**
   - Both methods now clearly located in the same class
   - More consistent with AOSP PackageManagerService structure

3. **Implementation Details:**
   - Method signatures remain the same
   - Internal logic may have changed, but patches remain identical
   - Return types unchanged (`void` for both methods)

### Migration Notes:

If migrating from Android 15:
- Update class path to explicit `PackageManagerServiceImpl`
- No changes to patch implementation required
- Method names and return types are identical

---

## Summary

After applying all patches in this guide, `miui-services.jar` will:
- Allow system apps to be updated from any source (including third-party app stores)
- Remove update restrictions on critical system apps like Settings and PowerKeeper
- Bypass MIUI/HyperOS app isolation policies
- Enable sideloading of system app updates

---

## Complete Class Reference

```
com.android.server.pm.PackageManagerServiceImpl
├── verifyIsolationViolation()V
└── canBeUpdate()V
```

**Note:** Method signatures may include parameters depending on the specific HyperOS build. The key is to identify the correct methods by name and ensure they return early (`return-void`).

---

## Warning

⚠️ **Security and Stability Impact:**

1. **System Stability Risk:** Updating system apps (especially Settings and PowerKeeper) with incompatible versions can cause:
   - System crashes and force closes
   - Boot loops or soft bricks
   - Loss of functionality (battery management, system settings, etc.)
   - Performance degradation
   - Broken system features

2. **Security Risk:** Allowing third-party updates to system apps bypasses MIUI's security model:
   - Malicious apps could replace critical system components
   - App isolation protections are disabled
   - System integrity verification is bypassed
   - Potential for privilege escalation exploits

3. **Data Loss Risk:**
   - Incompatible updates may corrupt app data
   - Settings and configurations may be lost
   - User preferences may be reset

4. **Warranty and Support:**
   - Modifying system apps may void device warranty
   - May violate MIUI/HyperOS terms of service
   - Official support may be refused for modified devices
   - OTA updates may fail or cause issues

**Critical Recommendations:**
- ⚠️ **ONLY use on development/testing devices**
- ✅ **Always maintain backups** of original JAR files
- ✅ **Test updates carefully** before applying to daily driver devices
- ⚠️ **Be extremely cautious** when updating critical system components
- ✅ **Keep backup ROM** for recovery purposes

---

## Practical Use Cases

These patches are useful for:

### 1. Custom ROM Development
- Replacing MIUI system apps with custom alternatives
- Testing modified system components
- Developing custom features and integrations

### 2. Debloating
- Removing unwanted MIUI apps
- Replacing bloatware with lightweight alternatives
- Installing minimal system app versions

### 3. Feature Enhancement
- Installing modified versions of system apps with additional features
- Adding custom functionality to system components
- Enabling hidden or restricted features

### 4. Development and Testing
- Testing system app updates during development
- Debugging system-level issues
- Rapid iteration on system app changes

### 5. Customization
- Using third-party alternatives to MIUI system apps
- Installing custom themes and UI modifications
- Replacing stock apps with preferred alternatives

### 6. Privacy and Security Hardening
- Installing privacy-focused alternatives to MIUI apps
- Removing apps with telemetry or tracking
- Using open-source alternatives

---

## Verification Steps

### Prerequisites
```bash
# Ensure device is rooted and has proper access
adb root
adb remount
```

### 1. Patch and Recompile
```bash
# After making smali modifications
java -jar apktool.jar b miui-services_decompile -o miui-services.jar
```

### 2. Install on Device
```bash
# Push to device
adb push miui-services.jar /system/system_ext/framework/

# Set correct permissions
adb shell chmod 644 /system/system_ext/framework/miui-services.jar

# Restore SELinux context
adb shell restorecon -v /system/system_ext/framework/miui-services.jar
```

### 3. Reboot and Test
```bash
# Reboot device
adb reboot

# Wait for boot to complete, then test
adb wait-for-device

# Test updating a system app
adb install -r -d /path/to/modified_settings.apk
```

### 4. Verify Success
```bash
# Check if installation succeeded
adb shell pm list packages | grep com.android.settings

# Check logcat for any errors
adb logcat | grep -i "package\|install\|signature"
```

---

## Troubleshooting

### Device Doesn't Boot After Patching

**Symptoms:**
- Boot loop
- Stuck on boot animation
- System UI crashes repeatedly

**Solutions:**
1. **Restore Original JAR:**
   ```bash
   adb reboot recovery
   # Flash original system image or restore backup
   ```

2. **Check Prerequisites:**
   - Verify you completed invoke-custom cleanup (if applicable)
   - Ensure proper file permissions
   - Verify SELinux context

3. **Alternative Recovery:**
   ```bash
   # Boot into TWRP/recovery
   # Restore /system/system_ext/framework/miui-services.jar from backup
   ```

---

### System App Update Still Fails

**Symptoms:**
- Installation blocked with "signature mismatch" error
- "App not installed" message
- Permission denial in logcat

**Solutions:**

1. **Verify All Patches:**
   - Ensure `framework.jar` is patched (signature verification)
   - Ensure `services.jar` is patched (package validation)
   - Verify `miui-services.jar` patches were applied correctly

2. **Check Specific Error:**
   ```bash
   adb logcat -c  # Clear log
   adb install -r modified_app.apk
   adb logcat | grep -i "error\|failed\|denied"
   ```

3. **Test Isolation Violation:**
   - If seeing "isolation violation" errors, verify `verifyIsolationViolation()` patch
   - Check method was properly replaced with `return-void`

4. **Test Update Permission:**
   - If seeing "cannot update" errors, verify `canBeUpdate()` patch
   - Ensure method returns early

---

### App Crashes After Update

**Symptoms:**
- System app force closes after installation
- Repeated crashes
- Missing functionality

**Solutions:**

1. **Version Mismatch:**
   - Ensure updated app is compatible with your Android/MIUI version
   - Check app is built for correct API level
   - Verify dependencies are satisfied

2. **Restore Original:**
   ```bash
   # Uninstall updates
   adb shell pm uninstall-updates com.android.settings
   
   # OR reinstall system version
   adb install -r /system/app/Settings/Settings.apk
   ```

3. **Check Dependencies:**
   ```bash
   # Some system apps depend on specific framework versions
   adb logcat | grep -i "classnotfound\|linkage\|dependency"
   ```

---

### Permission Denied Errors

**Symptoms:**
- "Permission denied" when pushing JAR
- "Read-only file system" errors

**Solutions:**

1. **Disable DM-Verity:**
   ```bash
   # Required for system modifications
   adb reboot bootloader
   fastboot --disable-verity --disable-verification flash vbmeta vbmeta.img
   ```

2. **Check Mount Status:**
   ```bash
   adb shell mount | grep system
   # Should show rw (read-write)
   ```

3. **Remount System:**
   ```bash
   adb root
   adb remount
   # OR
   adb shell mount -o rw,remount /system
   ```

---

### SELinux Denials

**Symptoms:**
- Installation succeeds but app doesn't work
- "SELinux denial" messages in logcat

**Solutions:**

1. **Set Permissive (Development Only):**
   ```bash
   adb shell setenforce 0
   ```

2. **Fix Context:**
   ```bash
   adb shell restorecon -R /system/system_ext/framework/
   ```

3. **Check Denials:**
   ```bash
   adb shell dmesg | grep avc
   # Shows specific SELinux denials
   ```

---

## Advanced: Build-Specific Variations

### HyperOS Versions

Different HyperOS versions may have variations:

#### HyperOS 1.0 (MIUI 14 base)
- Methods in `com.miui.server.pm.*`
- Different package structure

#### HyperOS 2.0 (Android 15 base)
- Transition to AOSP-style structure
- Methods moving to `com.android.server.pm.*`

#### HyperOS 2.0+ (Android 16 base)
- Fully consolidated into `PackageManagerServiceImpl`
- Clearer separation from MIUI legacy code

### Regional Variants

#### China ROM
- More restrictive default policies
- Additional verification layers
- GetApps (Mi Store) integration

#### Global/EEA ROM
- Slightly relaxed policies (for Play Store compliance)
- Different package whitelists
- May have different method implementations

### Device-Specific Modifications

Some devices may have additional protections:

#### Xiaomi (Standard)
- As documented above

#### Redmi/POCO
- Usually identical to Xiaomi
- May have additional gaming/performance restrictions

#### Xiaomi Pad Series
- Tablet-specific restrictions
- Different app compatibility checks

---

## Debugging Method Locations

If methods are not found at documented locations:

```bash
# Decompile miui-services.jar
java -jar apktool.jar d miui-services.jar -o miui-services_decompile

# Search for methods
grep -r "verifyIsolationViolation" miui-services_decompile/
grep -r "canBeUpdate" miui-services_decompile/

# Find PackageManager-related classes
find miui-services_decompile/ -name "*PackageManager*.smali"
```

### Alternative Class Locations

If not in `PackageManagerServiceImpl`, check:
- `com.miui.server.pm.PackageManagerService`
- `com.miui.server.pm.MiuiPackageManagerService`
- `com.android.server.pm.MiuiPackageManagerServiceImpl`

---

## Complete Patching Workflow

For full signature verification bypass on Android 16 (MIUI/HyperOS):

1. ✅ **Framework Patches** - [01-framework-patches.md](01-framework-patches.md)
   - Disable AOSP signature verification
   - Bypass certificate checks

2. ✅ **Services Patches** - [02-services-patches.md](02-services-patches.md)
   - Bypass package validation
   - Disable downgrade checks
   - Allow signature mismatches

3. ✅ **MIUI-Services Patches** - [03-miui-services-patches.md](03-miui-services-patches.md) ← *This Guide*
   - Remove MIUI restrictions
   - Allow system app updates
   - Bypass isolation policies

4. 🔄 **Compile and Install All Three JARs**

5. 🔄 **Reboot Device**

6. ✅ **Test Installation**

---

## Safety Checklist

Before applying patches:

- [ ] Device is for **development/testing only**
- [ ] **Complete backup** of original JAR files created
- [ ] **Full system backup** (TWRP/custom recovery) created
- [ ] **Backup ROM** or factory image available
- [ ] Device is **rooted** with proper access
- [ ] **DM-verity disabled** (if modifying /system)
- [ ] Understand **risks** of system modification
- [ ] Have **recovery plan** if device doesn't boot
- [ ] Tested patches on **similar device first** (if possible)
- [ ] Read and understood **all warnings** in documentation

---

## Credits

**Original Research:** @MMETMAmods  
**Android 16 Documentation:** Framework Patcher V2 Project  
**Community Testing:** XDA Developers Community

---

## Related Documentation

- [Framework Patching Guide](01-framework-patches.md)
- [Services Patching Guide](02-services-patches.md)
- [Android 15 MIUI-Services Guide](../a15/patching-guide/03-miui-services-patches.md)
- [APK Editor Documentation](../apkeditor.md)
- [General Usage Guide](../USAGE.md)
- [CN Notification Fix](../CN_NOTIFICATION_FIX.md)

---

## Additional Resources

### Tools
- [APKTool](https://ibotpeaches.github.io/Apktool/) - Decompiling/recompiling
- [jadx](https://github.com/skylot/jadx) - Java decompiler
- [MT Manager](https://mt2.cn/) - Android APK editor (if editing on-device)

### Communities
- [XDA Developers](https://forum.xda-developers.com/) - ROM development
- [4PDA](https://4pda.to/) - Russian Android community
- [MIUI EU](https://xiaomi.eu/) - MIUI custom ROMs

### Learning Resources
- [Smali/Baksmali](https://github.com/JesusFreke/smali) - Smali documentation
- [Android Developer Docs](https://developer.android.com/) - Official documentation

