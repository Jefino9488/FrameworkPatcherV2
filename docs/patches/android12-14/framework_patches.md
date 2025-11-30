# Framework Patches (Android 12-14)

## Signature Verification Bypass

### Method: `getMinimumSignatureSchemeVersionForTargetSdk`

**Action**: Return 0

```smali
method;
getMinimumSignatureSchemeVersionForTargetSdk
return 0
```

### Method: `verifyMessageDigest`

**Action**: Return 1

```smali
method;
verifyMessageDigest
return 1
```

### Method: `verifySignatures`

**Action**: Modify return value

Find:

```smali
invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1
```

Add under it:

```smali
const/4 v1, 0x0
```

### Signature Verifier Methods

**Action**: Set `p3` (boolean) to 0 (false)

Search for:

```smali
invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
```

Add above it:

```smali
const/4 p3, 0x0
```

Search for:

```smali
invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV2Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
```

Add above it:

```smali
const/4 p3, 0x0
```

Search for:

```smali
invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV3Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
```

Add above it:

```smali
const/4 p3, 0x0
```

Search for:

```smali
invoke-static {p0, p1, p2, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV3AndBelowSignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
```

Add above it:

```smali
const/4 p3, 0x0
```

### Method: `checkCapability`

**Action**: Return 1

```smali
method;
checkCapability

return 1
```

### Method: `checkCapabilityRecover`

**Action**: Return 1

```smali
method;
checkCapabilityRecover

return 1
```

### Method: `isPackageWhitelistedForHiddenApis`

**Action**: Return 1

```smali
method;
isPackageWhitelistedForHiddenApis

return 1
```

### Class: `android.util.jar.StrictJarFile`

**Action**: Remove check

Search:

```smali
invoke-virtual {p0, v5}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

move-result-object v6
```

Below delete `if-eqz`:

```smali
if-eqz v6, :cond_52 #removed

:cond_52 #removed
```
