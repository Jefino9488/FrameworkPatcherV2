# Services.jar Patching Guide - Android 15 (HyperOS 2.0)

This guide provides detailed instructions for disabling signature verification and package validation in `services.jar` for Android 15 / HyperOS 2.0.

## Table of Contents
1. [Signature Verification Methods](#1-signature-verification-methods)
2. [InstallPackageHelper Modifications](#2-installpackagehelper-modifications)
3. [ReconcilePackageUtils Modifications](#3-reconcilepackageutils-modifications)

---

## 1. Signature Verification Methods

All methods in this section should be modified to disable signature verification checks.

### Method: `checkDowngrade`

**Location:** Search across `services.jar` for method named `checkDowngrade`

**Action:** Replace the entire method body with:
```smali
return-void
```

**Purpose:** Disables downgrade checking, allowing installation of older versions of applications without verification errors.

---

### Method: `shouldCheckUpgradeKeySetLocked`

**Location:** Search across `services.jar` for method named `shouldCheckUpgradeKeySetLocked`

**Action:** Replace the entire method body with:
```smali
return 0
```

**Purpose:** Returns false (0) to skip upgrade key set verification, allowing apps to be updated even when key sets don't match.

---

### Method: `verifySignatures`

**Location:** Search across `services.jar` for method named `verifySignatures`

**Action:** Replace the entire method body with:
```smali
return 0
```

**Purpose:** Returns 0 (SIGNATURE_MATCH) to bypass signature verification during package installation and updates.

---

### Method: `compareSignatures`

**Location:** Search across `services.jar` for method named `compareSignatures`

**Action:** Replace the entire method body with:
```smali
return 0
```

**Purpose:** Returns 0 (SIGNATURE_MATCH) when comparing signatures, allowing mismatched signatures to pass validation.

---

### Method: `matchSignaturesCompat`

**Location:** Search across `services.jar` for method named `matchSignaturesCompat`

**Action:** Replace the entire method body with:
```smali
return 1
```

**Purpose:** Returns true (1) for compatibility signature matching, ensuring backward compatibility with older signature formats.

---

## 2. InstallPackageHelper Modifications

### Class: `com.android.server.pm.InstallPackageHelper`

#### Patch 2.1: Bypass Shared User Leaving Check

**Search for:**
```smali
invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z
```

**Action:**
1. Locate the line **above** containing: `if-eqz v12, :cond_xx`
2. **Above** that `if-eqz` instruction, add:
```smali
const/4 v12, 0x1
```

**Purpose:** Forces the shared user leaving check to pass, allowing apps to leave shared user groups without restrictions.

**Context:** This patch allows applications to transition away from shared user IDs, which is necessary for certain app updates and installations.

---

## 3. ReconcilePackageUtils Modifications

### Class: `com.android.server.pm.ReconcilePackageUtils`

#### Patch 3.1: Enable Package Reconciliation Bypass

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

---

## Summary

After applying all patches in this guide, `services.jar` will:
- Allow installation of older app versions (disable downgrade checks)
- Skip signature verification during installation and updates
- Bypass key set verification
- Allow signature mismatches
- Enable shared user ID transitions
- Relax package reconciliation rules

## Method Location Reference

Most of the methods mentioned in this guide are located in the following classes:
- `com.android.server.pm.PackageManagerService`
- `com.android.server.pm.PackageManagerServiceUtils`
- `com.android.server.pm.InstallPackageHelper`
- `com.android.server.pm.ReconcilePackageUtils`

## Warning

⚠️ **Security Impact:** These modifications significantly reduce system security by:
- Allowing unsigned or maliciously signed apps to be installed
- Permitting app downgrades (which can reintroduce security vulnerabilities)
- Bypassing Android's signature verification system

**Only use these modifications on development/testing devices.**

## Verification Steps

After patching:
1. Recompile `services.jar`
2. Push to device
3. Verify the device boots successfully
4. Test by installing an app with a mismatched signature

## Next Steps

After patching `services.jar`, proceed to:
- [miui-services.jar patching guide](03-miui-services-patches.md)

## Troubleshooting

**If device bootloops:**
- Verify you completed the [prerequisites](00-prerequisites.md) (cleaning `invoke-custom` methods)
- Check that all patches were applied correctly
- Restore original `services.jar` from backup and retry

**If signature verification still fails:**
- Ensure all methods listed are properly modified
- Verify `framework.jar` patches are also applied
- Check device logs for specific error messages

