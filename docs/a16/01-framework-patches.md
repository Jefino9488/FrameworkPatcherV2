# Framework.jar Patching Guide - Android 16

This guide provides detailed instructions for disabling signature verification in `framework.jar` for Android 16.

## Table of Contents
1. [PackageParser Modifications](#1-packageparser-modifications)
2. [PackageParserException Modifications](#2-packageparserexception-modifications)
3. [SigningDetails Modifications](#3-signingdetails-modifications)
4. [APK Signature Scheme Verifiers](#4-apk-signature-scheme-verifiers)
5. [ApkSignatureVerifier Modifications](#5-apksignatureverifier-modifications)
6. [ApkSigningBlockUtils Modifications](#6-apksigningblockutils-modifications)
7. [StrictJarVerifier Modifications](#7-strictjarverifier-modifications)
8. [StrictJarFile Modifications](#8-strictjarfile-modifications)
9. [ParsingPackageUtils Modifications](#9-parsingpackageutils-modifications)

---

## 1. PackageParser Modifications

### Class: `android.content.pm.PackageParser`

#### Patch 1.1: Bypass Certificate Verification

**Search for:**
```smali
invoke-static {v2, v0, v1}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
```

**Action:** Add **above** the line:
```smali
const/4 v1, 0x1
```

**Purpose:** Forces the verification flag to true, bypassing the certificate verification check.

---

#### Patch 1.2: Bypass Shared User ID Validation

**Search for:**
```smali
"<manifest> specifies bad sharedUserId name \""
```

**Action:** 
1. Locate the line above containing: `if-nez v14, :cond_x`
2. **Above** that `if-nez` instruction, add:
```smali
const/4 v14, 0x1
```

**Purpose:** Forces the shared user ID validation to pass, preventing errors when installing apps with non-standard shared user IDs.

**Note:** Android 16 uses register `v14` instead of `v5` (which was used in Android 15).

---

## 2. PackageParserException Modifications

### Class: `android.content.pm.PackageParser$PackageParserException`

#### Patch 2.1: Suppress Parse Errors

**Search for:**
```smali
iput p1, p0, Landroid/content/pm/PackageParser$PackageParserException;->error:I
```

**Action:** Add **above** the line:
```smali
const/4 p1, 0x0
```

**Purpose:** Sets the error code to 0 (no error) before storing it, effectively suppressing package parsing errors.

---

## 3. SigningDetails Modifications

### Class: `android.content.pm.PackageParser$SigningDetails`

#### Patch 3.1: Force Capability Check Success

**Search for:** `checkCapability`

**Action:** You will find **3 methods** with this name. For each method:
- Replace the entire method body to:
```smali
return 1
```

**Purpose:** Forces all signature capability checks to return success (1 = true).

---

### Class: `android.content.pm.SigningDetails`

#### Patch 3.2: Force Capability Check Success (Duplicate)

**Search for:** `checkCapability`

**Action:** You will find **3 methods** with this name. For each method:
- Replace the entire method body to:
```smali
return 1
```

**Purpose:** Forces all signature capability checks in the main SigningDetails class to return success.

---

#### Patch 3.3: Bypass Ancestor Verification

**Search for:** `hasAncestorOrSelf`

**Action:** Replace the entire method body to:
```smali
return 1
```

**Purpose:** Forces the ancestor or self-check to always return true, allowing updates from different signing keys.

---

## 4. APK Signature Scheme Verifiers

### Class: `android.util.apk.ApkSignatureSchemeV2Verifier`

#### Patch 4.1: Bypass V2 Signature Digest Verification

**Search for:**
```smali
invoke-static {v8, v4}, Ljava/security/MessageDigest;->isEqual([B[B)Z
```

**Action:** Change the following line from:
```smali
move-result v0
```
to:
```smali
const/4 v0, 0x1
```

**Purpose:** Forces the digest comparison to always return true, bypassing APK Signature Scheme V2 verification.

**Note:** Android 16 uses register `v4` instead of `v7` (which was used in Android 15).

---

### Class: `android.util.apk.ApkSignatureSchemeV3Verifier`

#### Patch 4.2: Bypass V3 Signature Digest Verification

**Search for:**
```smali
invoke-static {v9, v3}, Ljava/security/MessageDigest;->isEqual([B[B)Z
```

**Action:** Change the following line from:
```smali
move-result v0
```
to:
```smali
const/4 v0, 0x1
```

**Purpose:** Forces the digest comparison to always return true, bypassing APK Signature Scheme V3 verification.

**Note:** Android 16 uses registers `v9` and `v3` instead of `v12` and `v6` (which were used in Android 15).

---

## 5. ApkSignatureVerifier Modifications

### Class: `android.util.apk.ApkSignatureVerifier`

#### Patch 5.1: Set Minimum Signature Scheme to V1

**Search for:** `getMinimumSignatureSchemeVersionForTargetSdk`

**Action:** Replace the entire method body to:
```smali
return 0
```

**Purpose:** Forces the minimum signature scheme version to 0 (V1 signature), allowing older signature schemes.

---

#### Patch 5.2: Disable V1 Signature Verification

**Search for:**
```smali
invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
```

**Action:** Add **above** the line:
```smali
const p3, 0x0
```

**Purpose:** Sets the verification flag to false, disabling V1 signature verification.

---

## 6. ApkSigningBlockUtils Modifications

### Class: `android.util.apk.ApkSigningBlockUtils`

#### Patch 6.1: Bypass Signing Block Digest Verification

**Search for:**
```smali
invoke-static {v5, v6}, Ljava/security/MessageDigest;->isEqual([B[B)Z
```

**Action:** Change the line **after** it from:
```smali
move-result v7
```
to:
```smali
const/4 v7, 0x1
```

**Purpose:** Forces the digest comparison to always return true, bypassing signing block verification.

---

## 7. StrictJarVerifier Modifications

### Class: `android.util.jar.StrictJarVerifier`

#### Patch 7.1: Bypass JAR Message Digest Verification

**Search for:** `verifyMessageDigest`

**Action:** Replace the entire method body to:
```smali
return 1
```

**Purpose:** Forces the JAR message digest verification to always return success.

---

## 8. StrictJarFile Modifications

### Class: `android.util.jar.StrictJarFile`

#### Patch 8.1: Remove Manifest Entry Check

**Search for:**
```smali
invoke-virtual {p0, v5}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
```

**Action:** Delete the following lines that appear **after** the search pattern:
```smali
if-eqz v6, :cond_56    # REMOVE THIS LINE

:cond_56               # REMOVE THIS LINE
```

**Purpose:** Removes the check that validates whether a manifest entry exists, preventing failures when manifest validation fails.

---

## 9. ParsingPackageUtils Modifications

### Class: `com.android.internal.pm.pkg.parsing.ParsingPackageUtils`

#### Patch 9.1: Bypass Shared User ID Validation

**Search for:**
```smali
"<manifest> specifies bad sharedUserId name \""
```

**Action:**
1. Locate the line above containing: `if-eqz v4, :cond_x`
2. **Above** that `if-eqz` instruction, add:
```smali
const/4 v4, 0x0
```

**Purpose:** Forces the shared user ID validation check to fail-safe, preventing rejection of packages with non-standard shared user IDs.

---

## Android 16 vs Android 15 Differences

### Key Changes from Android 15:

1. **Register Changes:**
   - Shared User ID check: `v5` → `v14`
   - V2 Verifier: `v7` → `v4`
   - V3 Verifier: `v12, v6` → `v9, v3`

2. **Method Signatures:** All method locations remain the same, but internal register allocation has changed

3. **Class Structure:** No significant class restructuring between Android 15 and 16 for these components

### Migration Notes:

If you're migrating from Android 15 patches:
- Update all register references to match Android 16 register allocation
- Test thoroughly as internal method implementations may have changed
- Some condition labels (`:cond_xx`) may have different numbers

---

## Summary

After applying all patches in this guide, `framework.jar` will:
- Bypass all APK signature verification schemes (V1, V2, V3)
- Allow installation of apps with modified or mismatched signatures
- Skip certificate validation checks
- Disable JAR manifest verification
- Allow non-standard shared user IDs

## Warning

⚠️ **Security Impact:** These modifications completely disable signature verification. Only use on development/testing devices. Your device will be vulnerable to malicious applications.

## Next Steps

After patching `framework.jar`, proceed to:
- [services.jar patching guide](02-services-patches.md)
- [miui-services.jar patching guide](03-miui-services-patches.md)

## Verification

To verify patches are working:
1. Recompile framework.jar
2. Push to device
3. Attempt to install an app with modified signature
4. Check logcat for signature verification messages

## Troubleshooting

**Bootloop after patching:**
- Verify register numbers match your specific Android 16 build
- Some OEM builds may have slightly different register allocations
- Use smali analysis tools to verify exact register usage

**Signature verification still failing:**
- Ensure all methods are properly patched
- Verify services.jar patches are also applied
- Check for additional OEM-specific verification layers

