# Quick Pattern Reference Guide - Android 15 HyperOS

## For Quick Debugging and Manual Verification

---

## FRAMEWORK.JAR Patterns

### File Locations:
- **framework_decompile/smali/android/content/pm/PackageParser.smali** (29,729 lines)
- **framework_decompile/smali_classes5/com/android/internal/pm/pkg/parsing/ParsingPackageUtils.smali**
- **framework_decompile/smali_classes4/android/util/apk/** (All signature verifiers)

### Critical Patterns with Exact Line Numbers:

#### 1. unsafeGetCertsWithoutVerification
```
File: framework_decompile/smali/android/content/pm/PackageParser.smali
Line: 1370

Pattern:
invoke-static {v2, v0, v1}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

Action: Add above line 1370:
    const/4 v1, 0x1
```

#### 2. PackageParser sharedUserId Check
```
File: framework_decompile/smali/android/content/pm/PackageParser.smali
Line: 11891

Context:
11880: invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
11882: move-result v5
11884: if-nez v5, :cond_1
11891: const-string v6, "<manifest> specifies bad sharedUserId name \""

Method: parseBaseApkCommon() starting at line 11765

Action: After move-result v5, add:
    const/4 v5, 0x1
```

#### 3. PackageParserException error field
```
File: framework_decompile/smali/android/content/pm/PackageParser$PackageParserException.smali
Lines: 31, 47

Pattern:
iput p1, p0, Landroid/content/pm/PackageParser$PackageParserException;->error:I

Action: Add above each occurrence:
    const/4 p1, 0x0
```

#### 4. SigningDetails checkCapability
```
File: framework_decompile/smali/android/content/pm/SigningDetails.smali

Methods to patch (return 1):
- Line 1105: .method public blacklist checkCapability(Landroid/content/pm/SigningDetails;I)Z
- Line 1158: .method public blacklist checkCapability(Ljava/lang/String;I)Z
- Line 1232: .method public blacklist checkCapabilityRecover(Landroid/content/pm/SigningDetails;I)Z

Also check:
framework_decompile/smali/android/content/pm/PackageParser$SigningDetails.smali
```

#### 5. ApkSignatureSchemeV2Verifier isEqual
```
File: framework_decompile/smali_classes4/android/util/apk/ApkSignatureSchemeV2Verifier.smali
Line: 1467-1469

Pattern:
1467: invoke-static {v8, v7}, Ljava/security/MessageDigest;->isEqual([B[B)Z
1469: move-result v0

Action: Replace line 1469 with:
    const/4 v0, 0x1
```

#### 6. ApkSignatureSchemeV3Verifier isEqual
```
File: framework_decompile/smali_classes4/android/util/apk/ApkSignatureSchemeV3Verifier.smali
Line: 2096-2098

Pattern:
2096: invoke-static {v12, v6}, Ljava/security/MessageDigest;->isEqual([B[B)Z
2098: move-result v0

Action: Replace line 2098 with:
    const/4 v0, 0x1
```

#### 7. ApkSigningBlockUtils isEqual
```
File: framework_decompile/smali_classes4/android/util/apk/ApkSigningBlockUtils.smali
Line: 3559-3561

Pattern:
3559: invoke-static {v5, v6}, Ljava/security/MessageDigest;->isEqual([B[B)Z
3561: move-result v7

Action: Replace line 3561 with:
    const/4 v7, 0x1
```

#### 8. ApkSignatureVerifier verifyV1Signature
```
File: framework_decompile/smali_classes4/android/util/apk/ApkSignatureVerifier.smali
Line: 2403

Pattern:
invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

Action: Add above line 2403:
    const/4 p3, 0x0
```

#### 9. StrictJarFile findEntry
```
File: framework_decompile/smali_classes4/android/util/jar/StrictJarFile.smali
Line: 246-250

Pattern:
246: invoke-virtual {p0, v5}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
248: move-result-object v6
250: if-eqz v6, :cond_0

Action: 
- Delete line 250 (if-eqz)
- Add nop at :cond_0 label location
```

#### 10. Methods to Return Fixed Values
```
hasAncestorOrSelf → return 1
verifyMessageDigest → return 1
getMinimumSignatureSchemeVersionForTargetSdk → return 0

Search in entire framework_decompile directory
```

---

## SERVICES.JAR Patterns

### File Locations:
- **services_decompile/smali_classes2/com/android/server/pm/InstallPackageHelper.smali**
- **services_decompile/smali_classes2/com/android/server/pm/ReconcilePackageUtils.smali**
- **services_decompile/smali_classes2/com/android/server/pm/PackageManagerServiceUtils.smali**

### Critical Patterns with Exact Line Numbers:

#### 1. InstallPackageHelper equals check
```
File: services_decompile/smali_classes2/com/android/server/pm/InstallPackageHelper.smali
Line: 18679-18683

Pattern:
18679: invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
18681: move-result v12
18683: if-eqz v12, :cond_6c
18686: invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z

Action: Add after line 18681:
    const/4 v12, 0x1
```

#### 2. ReconcilePackageUtils <clinit>
```
File: services_decompile/smali_classes2/com/android/server/pm/ReconcilePackageUtils.smali
Line: 11-26

Pattern:
11: .method static constructor <clinit>()V
12:     .locals 1
14:     .line 61
15:     sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

Search for const/4 v0, 0x0 within this method and change to 0x1
```

#### 3. Methods to Return Fixed Values
```
checkDowngrade → return-void
shouldCheckUpgradeKeySetLocked → return 0
verifySignatures → return 0
compareSignatures → return 0
matchSignaturesCompat → return 1

Search in services_decompile directory
```

---

## MIUI-SERVICES.JAR Patterns

### File Locations:
- **miui-services_decompile/smali/com/android/server/pm/PackageManagerServiceImpl.smali**

### Critical Patterns with Exact Line Numbers:

#### 1. verifyIsolationViolation
```
File: miui-services_decompile/smali/com/android/server/pm/PackageManagerServiceImpl.smali
Line: 5243

Pattern:
.method private verifyIsolationViolation(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/InstallSource;)V

Action: Replace method body with:
    .registers 12
    return-void
.end method
```

#### 2. canBeUpdate
```
File: miui-services_decompile/smali/com/android/server/pm/PackageManagerServiceImpl.smali
Line: 6538

Pattern:
.method public canBeUpdate(Ljava/lang/String;)V

Action: Replace method body with:
    .registers 5
    return-void
.end method
```

---

## INVOKE-CUSTOM CLEANUP (All JARs)

### Pattern:
```
Search for: invoke-custom

Found in methods: equals(), hashCode(), toString()

In these methods:
1. Set .registers to minimum needed (1 or 2)
2. Remove invoke-custom line
3. Remove move-result line
4. Replace return with appropriate default:
   - equals: const/4 v0, 0x0 + return v0
   - hashCode: const/4 v0, 0x0 + return v0
   - toString: const/4 v0, 0x0 + return-object v0
```

### Framework.jar invoke-custom Files:
```
framework_decompile/smali_classes2/android/media/MediaRouter2$PackageNameUserHandlePair.smali (3 occurrences)
framework_decompile/smali_classes2/android/media/MediaRouter2$InstanceInvalidatedCallbackRecord.smali (3 occurrences)
framework_decompile/smali_classes2/android/hardware/input/PhysicalKeyLayout$LayoutKey.smali (3 occurrences)
framework_decompile/smali_classes2/android/hardware/input/PhysicalKeyLayout$EnterKey.smali (3 occurrences)
framework_decompile/smali_classes2/android/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable.smali (3 occurrences)

Total: 15 instances in 5 files
```

---

## VERIFICATION COMMANDS

### Quick Check if Pattern Exists:
```bash
# Framework.jar
grep -n "unsafeGetCertsWithoutVerification" framework_decompile/smali/android/content/pm/PackageParser.smali
grep -n "checkCapability" framework_decompile/smali/android/content/pm/SigningDetails.smali
grep -n "isEqual" framework_decompile/smali_classes4/android/util/apk/ApkSignatureSchemeV2Verifier.smali

# Services.jar
grep -n "checkDowngrade" services_decompile/smali_classes2/com/android/server/pm/InstallPackageHelper.smali
grep -n "clinit" services_decompile/smali_classes2/com/android/server/pm/ReconcilePackageUtils.smali

# MIUI-services.jar
grep -n "verifyIsolationViolation" miui-services_decompile/smali/com/android/server/pm/PackageManagerServiceImpl.smali
grep -n "canBeUpdate" miui-services_decompile/smali/com/android/server/pm/PackageManagerServiceImpl.smali
```

### Count invoke-custom instances:
```bash
find framework_decompile -type f -name "*.smali" -exec grep -l "invoke-custom" {} + | wc -l
find services_decompile -type f -name "*.smali" -exec grep -l "invoke-custom" {} +
find miui-services_decompile -type f -name "*.smali" -exec grep -l "invoke-custom" {} +
```

---

## REGISTER VARIATIONS

### Common Register Patterns Seen:
```
v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12
p0, p1, p2, p3 (parameter registers)
```

### If a pattern doesn't match:
1. Check register numbers (v2 vs v3, etc.)
2. Check parameter registers (p1 vs p2, etc.)
3. Look for similar patterns nearby
4. Check if ROM version is different

---

## TROUBLESHOOTING

### Pattern Not Found:
1. Verify file path is correct
2. Check if register numbers differ
3. Search for method name instead of full signature
4. Check if this pattern is ROM-specific

### Multiple Matches Found:
1. Note line numbers of all matches
2. Check context around each match
3. Patch the one matching guide description
4. Document which occurrence was patched

### After Patching:
1. Verify with grep that patch was applied
2. Check surrounding code is still valid
3. Count .method and .end method tags match
4. Verify .registers is sufficient

---

## FILE STATISTICS

### Decompiled Sizes:
```
framework.jar → framework_decompile (315,982 lines in main file)
services.jar → services_decompile (259,571 lines in main file)
miui-services.jar → miui-services_decompile (69,155 lines in main file)
```

### Recompilation Test:
```bash
# Test recompilation without making changes
java -jar tools/apktool.jar b -q -f framework_decompile -o test_framework.jar
java -jar tools/apktool.jar b -q -f services_decompile -o test_services.jar
java -jar tools/apktool.jar b -q -f miui-services_decompile -o test_miui-services.jar
```

---

## NOTES

### Important:
- Always backup original JARs before patching
- Verify decompilation completed without errors
- Check apktool.yml exists in decompiled directories
- Test recompilation before deploying

### ROM Specific:
- These patterns are verified for HyperOS 2.0 Android 15
- Other HyperOS versions may have variations
- MIUI Global vs China may differ
- Xiaomi device variations possible

---

**Last Verified:** October 14, 2025
**ROM Version:** HyperOS 2.0 based on Android 15
**Apktool Version:** As specified in tools/apktool.jar
**Script Version:** patcher_a15.sh (1228 lines)

