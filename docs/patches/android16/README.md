# Android 16 Patching Guide

Complete guide for disabling signature verification and enabling system app modifications on Android 16 devices.

## Documentation Structure

### Patching Guides (In Order)

1. **[01-framework-patches.md](01-framework-patches.md)**
   - Disable APK signature verification (V1, V2, V3)
   - Bypass certificate validation
   - Allow mismatched signatures
   - Disable JAR manifest verification

2. **[02-services-patches.md](02-services-patches.md)**
   - Disable downgrade checks
   - Bypass package validation
   - Allow signature mismatches
   - Enable shared user transitions

3. **[03-miui-services-patches.md](03-miui-services-patches.md)** *(MIUI/HyperOS only)*
   - Allow third-party system app updates
   - Enable updates to Settings, PowerKeeper, etc.
   - Bypass MIUI isolation policies

## Quick Start

```bash
# 1. Decompile all JARs
java -jar apktool.jar d framework.jar
java -jar apktool.jar d services.jar
java -jar apktool.jar d miui-services.jar  # MIUI/HyperOS only

# 2. Apply patches from each guide
# Edit .smali files according to each guide

# 3. Recompile
java -jar apktool.jar b framework_decompile -o framework.jar
java -jar apktool.jar b services_decompile -o services.jar
java -jar apktool.jar b miui-services_decompile -o miui-services.jar

# 4. Push to device
adb root && adb remount
adb push framework.jar /system/framework/
adb push services.jar /system/framework/
adb push miui-services.jar /system/system_ext/framework/  # MIUI/HyperOS

# 5. Set permissions and reboot
adb shell chmod 644 /system/framework/*.jar
adb shell chmod 644 /system/system_ext/framework/miui-services.jar
adb reboot
```

## What Gets Patched

### Framework.jar
- `android.content.pm.PackageParser` - Package parsing and validation
- `android.content.pm.SigningDetails` - Signature capability checks
- `android.util.apk.*` - APK signature scheme verifiers (V1, V2, V3)
- `android.util.jar.*` - JAR verification
- `com.android.internal.pm.pkg.parsing.ParsingPackageUtils` - Package parsing utilities

### Services.jar
- `com.android.server.pm.PackageManagerServiceUtils` - Signature verification utilities
- `com.android.server.pm.KeySetManagerService` - Key set management
- `com.android.server.pm.InstallPackageHelper` - Package installation helpers
- `com.android.server.pm.ReconcilePackageUtils` - Package reconciliation

### MIUI-Services.jar (MIUI/HyperOS only)
- `com.android.server.pm.PackageManagerServiceImpl` - MIUI package manager extensions

## Android 16 Changes from Android 15

### Key Improvements

1. **No invoke-custom Prerequisites:**
   - Android 16 doesn't have the same bootloop issues as Android 15
   - No need to clean `invoke-custom` methods
   - More stable after patching

2. **Better Code Organization:**
   - Methods consolidated into `PackageManagerServiceUtils`
   - More explicit class locations
   - Clearer method signatures

3. **Register Changes:**
   - Different register allocations in some methods
   - Updated register numbers in documentation
   - More consistent register usage

### Migration from Android 15

If you're familiar with Android 15 patches:
- No prerequisites step needed
- Update register references (v5→v14, v7→v4, v12→v9, etc.)
- Use explicit method signatures for services.jar
- Same general approach and patch logic

## Warning

⚠️ **These modifications completely disable Android's signature verification system.**

**Risks:**
- Security vulnerabilities
- Malware installation risk
- System instability
- Warranty void

**Only use on:**
- Development devices
- Testing devices
- Devices with full backups

**Do NOT use on:**
- Daily driver phones
- Production devices
- Devices without backups

## Prerequisites

- Rooted Android 16 device
- ADB and fastboot tools
- Java Development Kit (JDK)
- APKTool 2.9.0 or newer
- Basic understanding of smali code
- Full device backup (TWRP/custom recovery)
- Original JAR backups

## Android 16 Specific Notes

### What's New in Android 16

- Improved package manager structure
- Better signature verification APIs
- More granular permission controls
- Enhanced key set management

### Compatibility

These patches are designed for:
- AOSP Android 16
- Custom ROMs based on Android 16
- Future HyperOS versions (based on Android 16)

May require adjustments for:
- OEM-specific modifications (Samsung, OnePlus, etc.)
- Regional ROM variants
- Device-specific builds

### Known Issues

- Some OEM builds have additional verification layers
- Regional variants may have different method signatures
- Pre-release Android 16 builds may have unstable APIs

## Troubleshooting

### Device bootloops
**Solution:** Restore original JARs, verify patches were applied correctly, check file permissions.

### Signature verification still fails
**Solution:** Ensure ALL applicable JAR files are patched (framework, services, and miui-services if on MIUI/HyperOS).

### Method not found errors
**Solution:** Verify method signatures match your specific Android 16 build, some OEMs have variations.

### SELinux denials
**Solution:** Restore proper SELinux context with `restorecon`, or set permissive mode for testing.

## File Structure

```
a16/
├── README.md (this file)
├── 01-framework-patches.md
├── 02-services-patches.md
└── 03-miui-services-patches.md
```

## Verification

To verify patches are working:

```bash
# Clear logcat
adb logcat -c

# Try installing app with modified signature
adb install -r test_modified.apk

# Check for signature verification messages
adb logcat | grep -i "signature\|verification\|package"
```

Expected: No signature verification errors, installation succeeds.

## Version Information

- **Android Version:** 16
- **API Level:** 36 (expected)
- **Status:** In Development
- **Last Updated:** 2025

## Related Documentation

- [Android 15 Patches](../a15/patching-guide/README.md) - For Android 15 devices
- [APK Editor Guide](../apkeditor.md) - Alternative patching method
- [Usage Guide](../USAGE.md) - Framework Patcher usage
- [CN Notification Fix](../CN_NOTIFICATION_FIX.md) - Fix notification issues

## Advanced Topics

### Build-Specific Variations

Different Android 16 builds may require adjustments:

- **AOSP:** Standard patches as documented
- **LineageOS:** Usually identical to AOSP
- **Pixel Experience:** May have Google-specific additions
- **OEM ROMs:** May have manufacturer-specific verification layers

### Debugging

```bash
# Decompile and search for methods
java -jar apktool.jar d services.jar
grep -r "checkDowngrade" services_decompile/
grep -r "verifySignatures" services_decompile/

# Use jadx for better code viewing
jadx services.jar
# Browse decompiled Java code
```

### Testing

```bash
# Create test APK with modified signature
# (instructions in testing documentation)

# Install and monitor
adb install -r modified_app.apk
adb logcat | grep PackageManager
```

## Safety Recommendations

1. **Always backup** before modifying system files
2. **Test on non-critical device** first
3. **Keep original JARs** for quick restoration
4. **Document changes** you make for future reference
5. **Monitor system logs** after modifications
6. **Have recovery plan** ready

## Credits

**Original Research:** @MMETMAmods  
**Android 16 Documentation:** Framework Patcher V2 Project  
**Testing:** Community Contributors

## Support

For help and discussion:
- [GitHub Issues](https://github.com/FrameworksForge/FrameworkPatcher/issues)
- [XDA Developers Forum](https://forum.xda-developers.com/)
- [Telegram Group](https://t.me/frameworkpatcher) *(if available)*

## Contributing

Found an issue or improvement?
- Open an issue on GitHub
- Submit a pull request
- Share your findings with the community

## License

See main project [LICENSE](../../LICENSE)

