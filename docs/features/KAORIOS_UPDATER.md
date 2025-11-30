# Kaorios Toolbox Updater

Automatic update script for Kaorios Toolbox components used in Framework Patcher V2.

## Overview

This script fetches the latest release of [Kaorios Toolbox](https://github.com/Wuang26/Kaorios-Toolbox) from GitHub and updates the following components:

- **KaoriosToolbox.apk** - Main application
- **privapp_whitelist XML** - Permission configuration
- **Utility Classes** - Smali classes extracted from APK (~156 files)

## Usage

### Basic Update

```bash
cd /path/to/FrameworkPatcherV2
./scripts/update_kaorios.sh
```

The script will:
1. Check your current version
2. Fetch latest release info from GitHub
3. Download and verify components
4. Update `kaorios_toolbox/` directory
5. Create a backup of old version

### Force Re-download

If you're already on the latest version but want to re-download:

```bash
./scripts/update_kaorios.sh
# When prompted "Force re-download? (y/N):", press 'y'
```

## What Gets Updated

### APK File
- **Location**: `kaorios_toolbox/KaoriosToolbox.apk`
- **Size**: ~5 MB
- **Purpose**: Installed as system priv-app in module

### Permission XML  
- **Location**: `kaorios_toolbox/privapp_whitelist_com.kousei.kaorios.xml`
- **Purpose**: Grants required system permissions to the app

### Utility Classes
- **Location**: `kaorios_toolbox/utils/kaorios/*.smali`
- **Count**: ~156 files
- **Purpose**: Injected into framework.jar during patching

### Version Tracking
- **Location**: `kaorios_toolbox/version.txt`
- **Format**: Git tag (e.g., `V1.0.4`)
- **Purpose**: Track installed version

## Important Notes

### Data Files Removed

**As of this update, data files are NO LONGER included in modules.**

Why?
- The Kaorios Toolbox app fetches configuration data from its own repository
- Including static data could cause compatibility issues
- Reduces module size

What was removed:
- `kaorios_toolbox/data/Keybox.xml`
- `kaorios_toolbox/data/device-model.json`
- `kaorios_toolbox/data/Pif-props.json`
- `kaorios_toolbox/data/app-props.json`
- `kaorios_toolbox/data/edit_file.json`

### Backup Policy

The script automatically creates backups:
- **Location**: `kaorios_toolbox.backup.YYYYMMDD_HHMMSS/`
- **When**: Before each update
- **What**: Complete copy of current `kaorios_toolbox/` directory

To restore from backup:
```bash
rm -rf kaorios_toolbox
cp -r kaorios_toolbox.backup.20250128_120000 kaorios_toolbox
```

## Requirements

### System Dependencies

- **curl** - For downloading releases
- **unzip** - For extracting archives
- **Java** - For decompiling APK with apktool
- **apktool** - Located at `tools/apktool.jar`

Check dependencies:
```bash
command -v curl && echo "✓ curl installed"
command -v unzip && echo "✓ unzip installed"
command -v java && echo "✓ java installed"
[ -f tools/apktool.jar ] && echo "✓ apktool found"
```

### GitHub API

The script uses GitHub's public API:
- **Endpoint**: `https://api.github.com/repos/Wuang26/Kaorios-Toolbox/releases/latest`
- **Rate Limit**: 60 requests/hour (unauthenticated)
- **No authentication required**

If you hit rate limits, wait an hour or authenticate:
```bash
# Set GitHub token (optional, for higher rate limits)
export GITHUB_TOKEN="your_github_personal_access_token"
./scripts/update_kaorios.sh
```

## Troubleshooting

### Failed to Fetch Release Information

**Problem**: Script cannot connect to GitHub API

**Solutions**:
1. Check internet connection
2. Verify GitHub is accessible: `curl -I https://api.github.com`
3. Check rate limit: `curl https://api.github.com/rate_limit`
4. Try again later if rate limited

### APK Not Found in Expected Location

**Problem**: Downloaded release has different structure

**Cause**: Kaorios Toolbox changed their release format

**Solution**: 
1. Check the [latest release](https://github.com/Wuang26/Kaorios-Toolbox/releases/latest)
2. Download manually and extract to `kaorios_toolbox/`
3. Report the issue for update script compatibility

### Failed to Decompile APK

**Problem**: apktool fails to extract classes

**Solutions**:
1. Update apktool: Place latest `apktool.jar` in `tools/`
2. Check Java version: `java -version` (requires 8+)
3. Verify APK is valid: `file kaorios_toolbox/KaoriosToolbox.apk`

### Utility Classes Not Found

**Problem**: Decompiled APK has different structure

**Cause**: Kaorios changed package structure or obfuscation

**Solutions**:
1. Manually locate smali classes in decompiled APK
2. Check both `smali/` and `smali_classes*/` directories
3. Look for classes with similar patterns to existing ones
4. Report Issue for script update

## Manual Update (Fallback)

If the script fails, you can update manually:

### 1. Download Latest Release

```bash
# Get latest release URL
RELEASE_URL="https://github.com/Wuang26/Kaorios-Toolbox/releases/latest"

# Download manually
wget $(curl -s https://api.github.com/repos/Wuang26/Kaorios-Toolbox/releases/latest | grep "browser_download_url.*KaoriosToolbox-Magisk.*\.zip" | cut -d '"' -f 4)
```

### 2. Extract Components

```bash
mkdir temp_kaorios
unzip KaoriosToolbox-Magisk-*.zip -d temp_kaorios

# Copy APK
cp temp_kaorios/system_ext/priv-app/KaoriosToolbox/KaoriosToolbox.apk kaorios_toolbox/

# Copy permission XML
cp temp_kaorios/system_ext/etc/permissions/privapp_whitelist_com.kousei.kaorios.xml kaorios_toolbox/
```

### 3. Extract Utility Classes

```bash
# Decompile APK
java -jar tools/apktool.jar d kaorios_toolbox/KaoriosToolbox.apk -o temp_decompiled

# Find and copy utility classes
find temp_decompiled -type d -name "kaorios" -path "*/util/kaorios"
# Copy that directory to kaorios_toolbox/utils/
```

### 4. Update Version

```bash
echo "V1.0.X" > kaorios_toolbox/version.txt
```

## Integration with Patcher

After updating, the new components are automatically used by the patcher:

```bash
# Android 16 with Kaorios
./scripts/patcher_a16.sh 36 device_name 1.0.0 --kaorios-toolbox

# Android 15 with Kaorios
./scripts/patcher_a15.sh 35 device_name 1.0.0 --kaorios-toolbox
```

No additional steps needed - the patcher will use the updated components.

## Version Information

### Checking Current Version

```bash
cat kaorios_toolbox/version.txt
```

###Checking Latest Version

```bash
curl -s https://api.github.com/repos/Wuang26/Kaorios-Toolbox/releases/latest | grep "tag_name"
```

### Version History Tracking

The script doesn't maintain a changelog, but backups allow you to:
1. See when updates were performed (backup timestamp)
2. Rollback to previous versions if needed
3. Compare component differences between versions

## Best Practices

1. **Run Before Patching**: Update components before starting a new patch job
   ```bash
   ./scripts/update_kaorios.sh
   ./scripts/patcher_a16.sh 36 device 1.0.0 --kaorios-toolbox
   ```

2. **Check for Updates Regularly**: Kaorios Toolbox is actively developed
   ```bash
   # Add to your workflow
   ./scripts/update_kaorios.sh
   ```

3. **Test New Versions**: After update, test on non-production device first

4. **Keep Backups**: Don't delete backup directories immediately

5. **Report Issues**: If new version breaks patching, report with:
   - Kaorios version
   - Framework details
   - Error messages

## Automation

### Scheduled Updates (Cron)

```bash
# Check for updates daily at 3 AM
0 3 * * * cd /path/to/FrameworkPatcherV2 && ./scripts/update_kaorios.sh
```

### Pre-Patch Hook

```bash
#!/bin/bash
# pre-patch.sh - Run before patching

echo "Updating Kaorios components..."
./scripts/update_kaorios.sh

echo "Running patcher..."
./scripts/patcher_a16.sh "$@"
```

## Support

- **Kaorios Issues**: [Kaorios Toolbox Repo](https://github.com/Wuang26/Kaorios-Toolbox/issues)
- **Updater Issues**: [Framework Patcher V2 Issues](https://github.com/Jefino9488/FrameworkPatcherV2/issues)
- **Telegram**: @Jefino9488
-
## Changelog

### v1.0.0 (2025-11-28)
- Initial release
- Automatic fetching from GitHub API
- Component extraction and verification
- Backup system
- Version tracking
- Data directory removal (app fetches from repo)
