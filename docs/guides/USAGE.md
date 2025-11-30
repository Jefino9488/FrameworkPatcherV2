# Usage Guide - Framework Patcher V2

## Table of Contents

1. [Command Line Usage](#command-line-usage)
2. [GitHub Actions Usage](#github-actions-usage)
3. [Web Interface Usage](#web-interface-usage)
4. [Telegram Bot Usage](#telegram-bot-usage)
5. [Feature Selection](#feature-selection)
6. [Common Scenarios](#common-scenarios)

---

## Command Line Usage

### Basic Syntax

```bash
./scripts/patcher_a15.sh <api_level> <device_name> <version_name> [JAR_OPTIONS] [FEATURE_OPTIONS]
./scripts/patcher_a16.sh <api_level> <device_name> <version_name> [JAR_OPTIONS] [FEATURE_OPTIONS]
```

### Parameters

- `api_level`: Android API level (35 for Android 15, 36 for Android 16)
- `device_name`: Device codename (e.g., xiaomi, rothko)
- `version_name`: ROM version identifier (e.g., OS2.0.200.33, 1.0.0)

### JAR Options

Select which JAR files to patch:

- `--framework` - Patch framework.jar
- `--services` - Patch services.jar
- `--miui-services` - Patch miui-services.jar
- (Default: all three JARs)

### Feature Options

Select which patches to apply:

- `--disable-signature-verification` - Bypass signature checks
- `--cn-notification-fix` - Fix notification delays
- `--disable-secure-flag` - Allow screenshots/recordings
- (Default: signature verification only)

### Examples

#### Basic Usage (Backward Compatible)

```bash
# Apply signature bypass to all JARs
./scripts/patcher_a15.sh 35 xiaomi 1.0.0
```

#### Single Feature

```bash
# CN notification fix only
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 --cn-notification-fix

# Disable secure flag only
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 --disable-secure-flag
```

#### Multiple Features

```bash
# Signature bypass + CN notification fix
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 \
  --disable-signature-verification \
  --cn-notification-fix

# All three features
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 \
  --disable-signature-verification \
  --cn-notification-fix \
  --disable-secure-flag
```

#### Selective JAR Patching

```bash
# Only patch miui-services with CN fix (most efficient)
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 \
  --miui-services \
  --cn-notification-fix

# Patch services and miui-services with secure flag
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 \
  --services --miui-services \
  --disable-secure-flag

# Framework only with signature bypass
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 \
  --framework \
  --disable-signature-verification
```

#### Android 16 Examples

```bash
# Android 16 with all features
./scripts/patcher_a16.sh 36 xiaomi 1.0.0 \
  --disable-signature-verification \
  --cn-notification-fix \
  --disable-secure-flag
```

---

## GitHub Actions Usage

### Manual Workflow Trigger

1. Navigate to **Actions** tab in GitHub repository
2. Select workflow:
   - **Android 15 Framework Patcher**
   - **Android 16 Framework Patcher**
3. Click **Run workflow** button
4. Select branch (usually `master`)

### Workflow Inputs

#### Required Parameters

- **api_level**: Android API level (35 or 36)
- **device_name**: Device codename for naming
- **version_name**: ROM version identifier
- **framework_url**: Direct URL to framework.jar
- **services_url**: Direct URL to services.jar
- **miui_services_url**: Direct URL to miui-services.jar

#### Optional Parameters

- **user_id**: Telegram user ID for notifications
- **enable_signature_bypass**: Enable signature verification bypass (default: true)
- **enable_cn_notification_fix**: Enable CN notification fix (default: false)
- **enable_disable_secure_flag**: Enable secure flag bypass (default: false)

### Example Configuration

```yaml
api_level: 35
device_name: xiaomi
version_name: OS2.0.200.33
framework_url: https://example.com/framework.jar
services_url: https://example.com/services.jar
miui_services_url: https://example.com/miui-services.jar
enable_signature_bypass: true
enable_cn_notification_fix: true
enable_disable_secure_flag: false
```

---

## Web Interface Usage

### Access

Visit: [https://jefino9488.github.io/FrameworkPatcherV2](https://jefino9488.github.io/FrameworkPatcherV2)

### Steps

1. **Select Android Version**
   - Click Android 15 or Android 16 tab

2. **Configure Features**
   - Check **Disable Signature Verification** (enabled by default)
   - Check **CN Notification Fix** (if using MIUI China ROM)
   - Check **Disable Secure Flag** (if you need screenshot capability)

3. **Fill Device Information**
   - API Level (pre-filled)
   - Device Codename
   - Version Name
   - Telegram User ID (optional, for notifications)

4. **Provide JAR URLs**
   - Framework.jar URL
   - Services.jar URL
   - MIUI Services.jar URL

5. **Submit**
   - Click "Start Patching"
   - Monitor workflow in GitHub Actions
   - Download module from Releases

### Tips

- URLs must be direct download links
- Form data is auto-saved in browser
- Check at least one feature
- Telegram notifications require valid user ID

---

## Telegram Bot Usage

### Starting a Patch

Send `/start_patch` to the bot.

### Conversation Flow

#### Step 1: Version Selection

Bot presents options:
- Android 15 (API 35)
- Android 16 (API 36)

Tap your choice.

#### Step 2: Feature Selection

Bot shows feature toggle buttons:
- **Disable Signature Verification** (tap to toggle)
- **CN Notification Fix** (tap to toggle)
- **Disable Secure Flag** (tap to toggle)

Tap features to enable/disable (marked with checkmark when enabled).

Tap **Continue** when done (at least one feature must be selected).

#### Step 3: File Upload

Send the 3 JAR files:
1. framework.jar
2. services.jar
3. miui-services.jar

Bot will upload each to PixelDrain and confirm receipt.

#### Step 4: Device Information

Provide when prompted:
1. Device codename (e.g., `xiaomi`, `rothko`)
2. ROM version (e.g., `OS2.0.200.33`, `1.0.0`)

#### Step 5: Completion

Bot triggers workflow and confirms:
- Device information
- Selected features
- Estimated completion time

You'll receive notification when build completes.

### Bot Commands

- `/start` - Welcome message
- `/start_patch` - Begin patching
- `/cancel` - Cancel current operation

### Rate Limits

- Maximum 3 workflow triggers per day per user
- Resets at midnight UTC

---

## Feature Selection

### Understanding Features

#### Signature Verification Bypass

**What it does:**
- Bypasses APK signature verification
- Allows installation of modified apps

**When to use:**
- Installing modded applications
- Testing unsigned APKs
- Using apps with modified signatures

**Affects:**
- framework.jar
- services.jar
- miui-services.jar

#### CN Notification Fix

**What it does:**
- Forces IS_INTERNATIONAL_BUILD to true
- Fixes notification delays on China ROMs

**When to use:**
- Using MIUI China ROM
- Experiencing notification delays
- Background app restrictions affecting notifications

**Affects:**
- miui-services.jar only

**Note:** MIUI-specific feature

#### Disable Secure Flag

**What it does:**
- Removes secure window flags
- Allows screenshots and screen recordings

**When to use:**
- Need to capture banking app screens
- Recording DRM-protected content
- Documenting app issues

**Affects:**
- services.jar
- miui-services.jar

**Warning:** Has security implications

### Combining Features

Features can be combined in any combination:

```bash
# Just signature bypass
./scripts/patcher_a15.sh 35 device version \
  --disable-signature-verification

# Signature + notification fix
./scripts/patcher_a15.sh 35 device version \
  --disable-signature-verification \
  --cn-notification-fix

# Notification fix + secure flag
./scripts/patcher_a15.sh 35 device version \
  --cn-notification-fix \
  --disable-secure-flag

# All three features
./scripts/patcher_a15.sh 35 device version \
  --disable-signature-verification \
  --cn-notification-fix \
  --disable-secure-flag
```

---

## Common Scenarios

### Scenario 1: Installing Modded Apps

**Requirements:**
- Signature verification bypass

**Command:**
```bash
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 --disable-signature-verification
```

**Alternative:** Use default behavior (no feature flag)

### Scenario 2: MIUI China ROM Notification Issues

**Requirements:**
- CN notification fix
- Optionally combine with signature bypass

**Command:**
```bash
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 \
  --disable-signature-verification \
  --cn-notification-fix
```

**Efficient alternative (miui-services only):**
```bash
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 \
  --miui-services \
  --cn-notification-fix
```

### Scenario 3: Screenshots in Secure Apps

**Requirements:**
- Disable secure flag
- Optionally combine with signature bypass

**Command:**
```bash
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 \
  --disable-signature-verification \
  --disable-secure-flag
```

**Efficient alternative (services + miui-services only):**
```bash
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 \
  --services --miui-services \
  --disable-secure-flag
```

### Scenario 4: Maximum Patching

**Requirements:**
- All features

**Command:**
```bash
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 \
  --disable-signature-verification \
  --cn-notification-fix \
  --disable-secure-flag
```

---

## Troubleshooting

### Common Issues

#### Module Not Found After Build

**Solution:**
- Check GitHub Actions log for errors
- Verify all JAR URLs are accessible
- Ensure at least one feature is selected

#### Bot Not Responding

**Solution:**
- Check bot status with `/status`
- Restart bot with `/restart`
- Deploy updates with `/deploy`

#### Workflow Fails with Exit Code 123

**Solution:**
- Usually indicates method not found
- Verify using correct Android version patcher
- Check JAR files are not corrupted

#### Screenshots Still Blocked

**Solution:**
- Ensure secure flag feature was enabled
- Verify module installed correctly
- Reboot device after installation
- Some apps have client-side protection

---

## Best Practices

### 1. Feature Selection

- **Start minimal**: Enable only features you need
- **Test individually**: Test one feature at a time initially
- **Combine carefully**: Understand implications of each feature

### 2. JAR Selection

- **Patch all by default**: Unless you know specific JARs needed
- **Use selective patching**: When you know exactly what's required
- **Test thoroughly**: After selective patching

### 3. Testing

- **Test on non-critical device** first
- **Keep backups**: Always maintain ROM backup
- **Document results**: Note which features work for your device

### 4. Updates

- **Check changelog**: Before updating
- **Review features**: New features may be added
- **Report issues**: Help improve the project

---

## Performance Tips

### Faster Patching

```bash
# Only patch necessary JARs
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 \
  --miui-services \
  --cn-notification-fix

# vs patching all JARs (slower)
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 \
  --cn-notification-fix
```

### Efficient Combinations

For MIUI China ROM users:
```bash
# Signature bypass doesn't need miui-services
# CN fix doesn't need framework/services
# Combine efficiently:
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 \
  --framework --services \
  --disable-signature-verification

./scripts/patcher_a15.sh 35 xiaomi 1.0.0 \
  --miui-services \
  --cn-notification-fix
```

---

## Advanced Usage

### Batch Processing

Process multiple devices:

```bash
#!/bin/bash
devices=("xiaomi" "oneplus" "samsung")
version="1.0.0"

for device in "${devices[@]}"; do
    ./scripts/patcher_a15.sh 35 "$device" "$version" \
        --disable-signature-verification \
        --cn-notification-fix
done
```

### CI/CD Integration

Integrate into your CI/CD pipeline:

```yaml
- name: Patch Framework
  run: |
    ./scripts/patcher_a15.sh \
      ${{ env.API_LEVEL }} \
      ${{ env.DEVICE_NAME }} \
      ${{ env.VERSION }} \
      --disable-signature-verification \
      --cn-notification-fix
```

### Verification

Verify patches applied:

```bash
# Decompile patched JAR
apktool d framework_patched.jar -o verify_dir

# Check specific patches
grep -r "const/4 v0, 0x1" verify_dir/ | grep IS_INTERNATIONAL_BUILD
```

---

## Getting Help

### Show Help Message

```bash
./scripts/patcher_a15.sh
# or
./scripts/patcher_a16.sh
```

Displays usage information with examples.

### Check Documentation

Refer to feature-specific guides in `docs/` directory:

- `FEATURE_SYSTEM.md` - System architecture
- `CN_NOTIFICATION_FIX.md` - CN fix implementation
- `DISABLE_SECURE_FLAG.md` - Secure flag details

### Report Issues

If you encounter problems:

1. Check existing issues on GitHub
2. Review documentation for your use case
3. Create new issue with:
   - Android version
   - Device information
   - Command used
   - Error message/log
   - Expected vs actual behavior

---

## Platform-Specific Notes

### Command Line

- Requires JAR files in current directory
- Generates module in current directory
- Shows detailed output during patching
- Best for developers and power users

### GitHub Actions

- Requires publicly accessible JAR URLs
- Automated module publishing to releases
- Telegram notifications available
- Best for automated workflows

### Web Interface

- User-friendly visual interface
- No local setup required
- Direct workflow triggering
- Best for casual users

### Telegram Bot

- Most user-friendly option
- Handles file uploads automatically
- Interactive feature selection
- Rate limited for fair usage
- Best for mobile users

---

## Tips and Tricks

### 1. Minimal Patching

Only enable features you actually need for faster processing:

```bash
# If you only need notification fix
./scripts/patcher_a15.sh 35 device version --cn-notification-fix
```

### 2. Testing New Features

Test features individually before combining:

```bash
# Test secure flag alone first
./scripts/patcher_a15.sh 35 device version --disable-secure-flag

# Then combine with others
./scripts/patcher_a15.sh 35 device version \
  --disable-signature-verification \
  --disable-secure-flag
```

### 3. ROM-Specific Optimization

For MIUI ROMs:
- Use CN notification fix if in China
- Include signature bypass for modded apps
- Consider secure flag if you need screenshots

For non-MIUI ROMs:
- CN notification fix won't have effect
- Skip miui-services.jar patching

### 4. Version Control

Keep track of which features you've used:

```bash
# Name your versions descriptively
./scripts/patcher_a15.sh 35 device "v1-sig-only" \
  --disable-signature-verification

./scripts/patcher_a15.sh 35 device "v2-all-features" \
  --disable-signature-verification \
  --cn-notification-fix \
  --disable-secure-flag
```

---

## Frequently Asked Questions

### Q: Can I select no features?

**A:** No, at least one feature must be selected. If no features are specified, signature verification bypass is applied by default for backward compatibility.

### Q: Can features conflict with each other?

**A:** No, features are designed to be independent and can be combined safely.

### Q: Which features should I use?

**A:** Depends on your needs:
- Signature bypass: Most common, needed for modded apps
- CN notification fix: Only for MIUI China ROM users
- Disable secure flag: Only if you need screenshot capability

### Q: How long does patching take?

**A:** Typically 5-10 minutes in GitHub Actions, faster for selective JAR patching.

### Q: Can I use this on non-MIUI ROMs?

**A:** Yes, but CN notification fix and some miui-services patches won't apply. The patcher will skip missing files gracefully.

### Q: Is it safe?

**A:** The patching process itself is safe, but:
- Always backup before flashing
- Understand security implications of each feature
- Test on non-critical device first

---

For more detailed information, see the feature-specific guides in the `docs/` directory.

