# Services Patches (Android 12-14)

## Downgrade & Signature Checks

### Method: `checkDowngrade`

**Action**: Return void

```smali
method;
checkDowngrade
return-void
```

### Method: `shouldCheckUpgradeKeySetLocked`

**Action**: Return 0

```smali
method;
shouldCheckUpgradeKeySetLocked
return 0
```

### Method: `verifySignatures`

**Action**: Return 0

```smali
method;
verifySignatures
return 0
```

### Method: `matchSignaturesCompat`

**Action**: Return 1

```smali
method;
matchSignaturesCompat
return 1
```

### Persistent Package Check

**Action**: Set result to 0

Find:

```smali
invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isPersistent()Z

    move-result v2
```

Add under it:

```smali
const/4 v2, 0x0
```
