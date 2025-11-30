# Android 15 (HyperOS 2.0) Patching Guide

Complete guide for disabling signature verification and enabling system app modifications on Android 15 / HyperOS 2.0 devices.

## ⚠️ IMPORTANT: Read This First!

**Before starting ANY patches**, you MUST complete the prerequisites to prevent bootloops!

## Documentation Structure

### Required Reading (In Order)

1. **[00-prerequisites.md](00-prerequisites.md)** ⚠️ **START HERE**
   - Critical steps to prevent bootloop
   - Clean up `invoke-custom` methods
   - **MANDATORY for Android 15**

2. **[01-framework-patches.md](01-framework-patches.md)**
   - Disable APK signature verification (V1, V2, V3)
   - Bypass certificate validation
   - Allow mismatched signatures
   - Disable JAR manifest verification

3. **[02-services-patches.md](02-services-patches.md)**
   - Disable downgrade checks
   - Bypass package validation
   - Allow signature mismatches
   - Enable shared user transitions

4. **[03-miui-services-patches.md](03-miui-services-patches.md)** *(MIUI/HyperOS only)*
   - Allow third-party system app updates
   - Enable updates to Settings, PowerKeeper, etc.
   - Bypass MIUI isolation policies

## Quick Start

```bash
# 1. Decompile all JARs
java -jar apktool.jar d framework.jar
java -jar apktool.jar d services.jar
java -jar apktool.jar d miui-services.jar  # MIUI/HyperOS only

# 2. IMPORTANT: Complete prerequisites first!
# Follow instructions in 00-prerequisites.md

# 3. Apply patches from each guide
# Edit .smali files according to each guide

# 4. Recompile
java -jar apktool.jar b framework_decompile -o framework.jar
java -jar apktool.jar b services_decompile -o services.jar
java -jar apktool.jar b miui-services_decompile -o miui-services.jar

# 5. Push to device
adb root && adb remount
adb push framework.jar /system/framework/
adb push services.jar /system/framework/
adb push miui-services.jar /system/system_ext/framework/  # MIUI/HyperOS

# 6. Set permissions and reboot
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
- Signature verification methods
- Downgrade checking
- Key set verification
- Package reconciliation
- Shared user validation

### MIUI-Services.jar (MIUI/HyperOS only)
- System app update restrictions
- App isolation policies
- Protected app update controls

## Warning

⚠️ **These modifications completely disable Android's signature verification system.**

**Risks:**
- Security vulnerabilities
- Malware installation risk
- System instability
- Potential bootloop
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

- Rooted Android device
- ADB and fastboot tools
- Java Development Kit (JDK)
- APKTool
- Basic understanding of smali code
- Full device backup (TWRP/custom recovery)
- Original JAR backups

## Android 15 Specific Notes

### Why Prerequisites Are Critical

Android 15 introduced changes to bytecode optimization that make `invoke-custom` instructions unstable when JAR files are modified. **Failure to clean these methods WILL cause bootloop or random reboots.**

### Register Changes from Android 14

If migrating from Android 14 patches:
- Many register numbers have changed
- Method signatures remain mostly the same
- Class locations are unchanged

### HyperOS 2.0 Compatibility

These patches are designed for:
- AOSP Android 15
- HyperOS 2.0 (based on Android 15)
- Custom ROMs based on Android 15

May require adjustments for:
- OEM-specific modifications (Samsung, OnePlus, etc.)
- Regional ROM variants
- Device-specific builds

## Troubleshooting

### Device bootloops
**Solution:** Did you complete [prerequisites](00-prerequisites.md)? If not, restore original JARs and start over.

### Random reboots when idle
**Solution:** `invoke-custom` methods not properly cleaned. Restore and redo prerequisites.

### Signature verification still fails
**Solution:** Ensure ALL three JAR files are patched (framework, services, miui-services).

### App installation blocked
**Solution:** Check logcat for specific error, verify corresponding patch was applied correctly.

## File Structure

```
a15/patching-guide/
├── README.md (this file)
├── 00-prerequisites.md ⚠️ START HERE
├── 01-framework-patches.md
├── 02-services-patches.md
└── 03-miui-services-patches.md
```

## Version Information

- **Android Version:** 15
- **API Level:** 35
- **HyperOS Version:** 2.0
- **Last Updated:** 2025

## Related Documentation

- [Android 16 Patches](../../a16/README.md) - For Android 16 devices
- [APK Editor Guide](../../apkeditor.md) - Alternative patching method
- [Usage Guide](../../USAGE.md) - Framework Patcher usage
- [CN Notification Fix](../../CN_NOTIFICATION_FIX.md) - Fix notification issues

## Credits

**Original Research:** @MMETMAmods  
**Documentation:** Framework Patcher V2 Project  
**Community:** XDA Developers

## Support

For help and discussion:
- [GitHub Issues](https://github.com/Jefino9488/FrameworkPatcherV2/issues)
- [XDA Thread](https://forum.xda-developers.com/)

## License

See main project [LICENSE](../../../LICENSE)

