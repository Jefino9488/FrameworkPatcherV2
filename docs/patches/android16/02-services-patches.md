# Services.jar Patching Guide - Android 16

This guide provides detailed instructions for disabling signature verification and package validation in `services.jar` for Android 16.

## Table of Contents
1. [PackageManagerServiceUtils Modifications](#1-packagemanagerserviceutils-modifications)
2. [KeySetManagerService Modifications](#2-keysetmanagerservice-modifications)
3. [InstallPackageHelper Modifications](#3-installpackagehelper-modifications)
4. [ReconcilePackageUtils Modifications](#4-reconcilepackageutils-modifications)

---

## 1. PackageManagerServiceUtils Modifications

### Class: `com.android.server.pm.PackageManagerServiceUtils`

This class contains several static utility methods for package signature verification. In Android 16, these methods have been consolidated into `PackageManagerServiceUtils` with more specific method signatures.

---

#### Method 1.1: `checkDowngrade` (All Three Variants)

**Purpose:** Disables downgrade checking for all package installation scenarios.

**Method Signatures to Modify:**

1. **Private static variant:**
```smali
.method private static checkDowngrade(JI[Ljava/lang/String;[ILandroid/content/pm/PackageInfoLite;)V
```

2. **Public variant (PackageSetting):**
```smali
.method public static checkDowngrade(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageInfoLite;)V
```

3. **Public variant (AndroidPackage):**
```smali
.method public static checkDowngrade(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/PackageInfoLite;)V
```

**Action:** Replace the entire method body of **all three methods** with:
```smali
return-void
```

**Purpose:** Disables downgrade checking, allowing installation of older versions of applications without verification errors.

**Context:** Android 16 has three separate implementations of downgrade checking for different contexts (version code comparison, PackageSetting validation, and AndroidPackage validation).

---

#### Method 1.2: `verifySignatures`

**Method Signature:**
```smali
.method public static verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;ZZZ)Z
```

**Action:** Replace the entire method body with:
```smali
return 0
```

**Purpose:** Returns 0 (SIGNATURE_MATCH) to bypass signature verification during package installation and updates.

**Context:** This method is called during package installation to verify that new signatures match existing ones. Returning 0 indicates a successful match.

---

#### Method 1.3: `compareSignatures`

**Method Signature:**
```smali
.method public static compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I
```

**Action:** Replace the entire method body with:
```smali
return 0
```

**Purpose:** Returns 0 (SIGNATURE_MATCH) when comparing two signature sets, allowing mismatched signatures to pass validation.

**Context:** Used to compare signatures between installed and incoming packages.

---

#### Method 1.4: `matchSignaturesCompat`

**Method Signature:**
```smali
.method private static matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/SigningDetails;)Z
```

**Action:** Replace the entire method body with:
```smali
return 1
```

**Purpose:** Returns true (1) for compatibility signature matching, ensuring backward compatibility with older signature formats.

**Context:** Handles legacy signature verification for packages using older signature schemes.

---

## 2. KeySetManagerService Modifications

### Class: `com.android.server.pm.KeySetManagerService`

#### Method 2.1: `shouldCheckUpgradeKeySetLocked`

**Method Signature:**
```smali
.method public shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/SharedUserApi;I)Z
```

**Action:** Replace the entire method body with:
```smali
return 0
```

**Purpose:** Returns false (0) to skip upgrade key set verification, allowing apps to be updated even when key sets don't match.

**Context:** KeySets are an Android feature that allows apps to define trusted signing keys for updates. This patch disables that verification.

---

## 3. InstallPackageHelper Modifications

### Class: `com.android.server.pm.InstallPackageHelper`

#### Patch 3.1: Bypass Shared User Leaving Check

**Method Context:**
```smali
.method private adjustScanFlags(ILcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;Lcom/android/server/pm/pkg/AndroidPackage;)I
```

**Search for:**
```smali
invoke-interface {p5}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z
```

**Action:**
1. Locate the line **above** containing: `if-eqz v3, :cond_xx`
2. **Above** that `if-eqz` instruction, add:
```smali
const/4 v3, 0x1
```

**Purpose:** Forces the shared user leaving check to pass, allowing apps to leave shared user groups without restrictions.

**Context:** This patch allows applications to transition away from shared user IDs, which is necessary for certain app updates and installations. Android 16 uses register `v3` instead of `v12` used in Android 15.

**Note:** The condition label `:cond_xx` will vary based on the specific build. Look for the pattern of the `if-eqz` check followed by the `isLeavingSharedUser()` call.

---

## 4. ReconcilePackageUtils Modifications

### Class: `com.android.server.pm.ReconcilePackageUtils`

#### Patch 4.1: Enable Package Reconciliation Bypass

**Location:** Inside the static constructor method:
```smali
.method static constructor <clinit>()V
```

**Search for:**
```smali
const/4 v0, 0x0
```

**Action:** Change it to:
```smali
const/4 v0, 0x1
```

**Purpose:** Modifies the static initialization to enable a bypass flag that relaxes package reconciliation checks during system startup.

**Context:** This affects the initialization of the ReconcilePackageUtils class, which is responsible for reconciling package state during system boot and app installations.

**Warning:** This is a static initializer, so be careful to change the correct `const/4 v0` instruction. Look for it within the `<clinit>()V` method specifically.

---

## Android 16 vs Android 15 Differences

### Major Changes:

1. **Method Consolidation:**
   - Android 15: Methods scattered across multiple classes
   - Android 16: Consolidated into `PackageManagerServiceUtils`

2. **Method Signatures:**
   - More specific type parameters (e.g., `PackageStateInternal`, `SharedUserApi`)
   - Additional boolean flags in `verifySignatures()`
   - Three explicit `checkDowngrade()` variants instead of generic search

3. **Register Changes:**
   - InstallPackageHelper: `v12` → `v3`

4. **Class Organization:**
   - Clearer separation between utils, services, and helpers
   - More granular method signatures for different scenarios

### Migration from Android 15:

If you're porting patches from Android 15:
1. Update class paths (most methods moved to `PackageManagerServiceUtils`)
2. Use full method signatures instead of just method names
3. Update register references in InstallPackageHelper
4. Test all three `checkDowngrade()` variants separately

---

## Summary

After applying all patches in this guide, `services.jar` will:
- Allow installation of older app versions (disable downgrade checks)
- Skip signature verification during installation and updates
- Bypass key set verification
- Allow signature mismatches
- Enable shared user ID transitions
- Relax package reconciliation rules

## Complete Class Reference

```
com.android.server.pm.PackageManagerServiceUtils
├── checkDowngrade(JI[Ljava/lang/String;[ILandroid/content/pm/PackageInfoLite;)V
├── checkDowngrade(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageInfoLite;)V
├── checkDowngrade(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/PackageInfoLite;)V
├── verifySignatures(...)Z
├── compareSignatures(...)I
└── matchSignaturesCompat(...)Z

com.android.server.pm.KeySetManagerService
└── shouldCheckUpgradeKeySetLocked(...)Z

com.android.server.pm.InstallPackageHelper
└── adjustScanFlags(...)I [contains inline patch]

com.android.server.pm.ReconcilePackageUtils
└── <clinit>()V [static constructor]
```

---

## Warning

⚠️ **Security Impact:** These modifications significantly reduce system security by:
- Allowing unsigned or maliciously signed apps to be installed
- Permitting app downgrades (which can reintroduce security vulnerabilities)
- Bypassing Android's signature verification system
- Disabling key set validation

**Only use these modifications on development/testing devices.**

---

## Verification Steps

After patching:

1. **Recompile services.jar**
   ```bash
   java -jar apktool.jar b services_decompile -o services.jar
   ```

2. **Push to device**
   ```bash
   adb root
   adb remount
   adb push services.jar /system/framework/
   adb shell chmod 644 /system/framework/services.jar
   ```

3. **Verify and reboot**
   ```bash
   adb shell restorecon /system/framework/services.jar
   adb reboot
   ```

4. **Test installation**
   ```bash
   # Try installing an app with mismatched signature
   adb install -r test_app_modified_signature.apk
   ```

---

## Next Steps

After patching `services.jar`, proceed to:
- [miui-services.jar patching guide](03-miui-services-patches.md) (for MIUI/HyperOS devices)

---

## Troubleshooting

### Device bootloops after patching
**Symptoms:** Device continuously reboots after applying patches

**Solutions:**
1. Restore original `services.jar` from backup
2. Verify all method signatures match exactly
3. Check for typos in smali code
4. Ensure proper file permissions (644)

### Signature verification still fails
**Symptoms:** Apps with modified signatures still fail to install

**Solutions:**
1. Verify `framework.jar` is also patched
2. Check logcat for specific error messages
3. Ensure all three `checkDowngrade()` methods are patched
4. Verify `verifySignatures()` method is properly modified

### SELinux denials
**Symptoms:** Permission denied errors in logcat

**Solutions:**
```bash
adb shell restorecon -R /system/framework/
# OR set SELinux to permissive (development only)
adb shell setenforce 0
```

### Method not found errors
**Symptoms:** `NoSuchMethodError` in logcat

**Solutions:**
- Verify method signatures match your specific Android 16 build
- Some OEM builds may have slightly different method signatures
- Use jadx or similar tool to verify exact method signatures in your ROM

---

## Advanced: Build-Specific Variations

Different Android 16 builds may have variations:

### AOSP vs OEM Builds
- **AOSP:** Methods as documented above
- **Samsung:** May have additional Knox verification layers
- **Xiaomi/MIUI:** Additional checks in framework (see miui-services patches)
- **OnePlus/Oppo:** OxygenOS/ColorOS may have custom verification

### Debugging Method Locations
```bash
# Decompile services.jar
java -jar apktool.jar d services.jar

# Search for methods
grep -r "checkDowngrade" services_decompile/
grep -r "verifySignatures" services_decompile/
```

---

## Credits

**Original Research:** @MMETMAmods  
**Android 16 Adaptation:** Framework Patcher V2 Project

---

## Related Documentation

- [Framework Patching Guide](01-framework-patches.md)
- [MIUI-Services Patching Guide](03-miui-services-patches.md)
- [Android 15 Services Guide](../a15/patching-guide/02-services-patches.md)

