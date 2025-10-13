# Feature Selection System

## Overview

Framework Patcher V2 implements a flexible feature selection system allowing users to choose exactly which patches to apply to their Android framework files. This document describes the system architecture and implementation details.

## Available Features

### 1. Disable Signature Verification

**Status:** Fully Implemented (Android 15 & 16)

**Description:** Bypasses APK signature verification checks to allow installation of modified or unsigned applications.

**Affects:**
- framework.jar
- services.jar  
- miui-services.jar

**Implementation:**
- Patches approximately 15 signature verification methods
- Modifies ParsingPackageUtils, PackageParser, SigningDetails, ApkSignatureVerifier
- Forces signature checks to return success/valid states

**Default:** Enabled (for backward compatibility)

### 2. CN Notification Fix

**Status:** Fully Implemented (Android 15 & 16)

**Description:** Fixes notification delays on China ROM devices by patching IS_INTERNATIONAL_BUILD boolean checks.

**Affects:**
- miui-services.jar only

**Implementation:**
- Patches 5 IS_INTERNATIONAL_BUILD checks across 4 classes
- Forces checks to return true (0x1)
- Classes modified:
  - BroadcastQueueModernStubImpl
  - ActivityManagerServiceImpl (2 locations)
  - ProcessManagerService
  - ProcessSceneCleaner

**Version Differences:**
- Android 15: ProcessSceneCleaner uses v0 register
- Android 16: ProcessSceneCleaner uses v4 register (patched to v0)

**Default:** Disabled

### 3. Disable Secure Flag

**Status:** Fully Implemented (Android 15 & 16)

**Description:** Removes secure window flags that prevent screenshots and screen recordings of protected content.

**Affects:**
- services.jar
- miui-services.jar

**Implementation:**
- Replaces 2 method bodies to return false (0x0)
- Android 15: WindowManagerServiceStub.isSecureLocked()
- Android 16: WindowState.isSecureLocked()
- Both: WindowManagerServiceImpl.notAllowCaptureDisplay()

**Security Warning:** This feature removes important security protections. Use responsibly.

**Default:** Disabled

---

## System Architecture

### Feature Flag Implementation

Both patcher scripts use global feature flags:

```bash
FEATURE_DISABLE_SIGNATURE_VERIFICATION=0
FEATURE_CN_NOTIFICATION_FIX=0
FEATURE_DISABLE_SECURE_FLAG=0
```

Flags are set via command-line arguments and control which patches are applied.

### Modular Function Structure

Each JAR file has dedicated functions for each feature:

**Framework.jar Functions:**
- `apply_framework_signature_patches()`
- `apply_framework_cn_notification_fix()`
- `apply_framework_disable_secure_flag()`

**Services.jar Functions:**
- `apply_services_signature_patches()`
- `apply_services_cn_notification_fix()`
- `apply_services_disable_secure_flag()`

**MIUI-Services.jar Functions:**
- `apply_miui_services_signature_patches()`
- `apply_miui_services_cn_notification_fix()`
- `apply_miui_services_disable_secure_flag()`

### Conditional Patching Logic

Before decompiling a JAR, the system checks if any features require it:

```bash
if [ $FEATURE_DISABLE_SIGNATURE_VERIFICATION -eq 0 ] && \
   [ $FEATURE_CN_NOTIFICATION_FIX -eq 0 ] && \
   [ $FEATURE_DISABLE_SECURE_FLAG -eq 0 ]; then
    log "No features selected for this JAR, skipping"
    return 0
fi
```

Features are then applied selectively:

```bash
if [ $FEATURE_DISABLE_SIGNATURE_VERIFICATION -eq 1 ]; then
    apply_framework_signature_patches "$decompile_dir"
fi

if [ $FEATURE_CN_NOTIFICATION_FIX -eq 1 ]; then
    apply_framework_cn_notification_fix "$decompile_dir"
fi

if [ $FEATURE_DISABLE_SECURE_FLAG -eq 1 ]; then
    apply_framework_disable_secure_flag "$decompile_dir"
fi
```

---

## Feature Impact Matrix

| Feature | framework.jar | services.jar | miui-services.jar |
|---------|---------------|--------------|-------------------|
| Signature Verification Bypass | Required | Required | Required |
| CN Notification Fix | - | - | Required |
| Disable Secure Flag | - | Required | Required |

**Legend:** Required = patches applied, - = not affected

---

## Command-Line Interface

### Syntax

```bash
./scripts/patcher_a15.sh <api> <device> <version> [JAR_OPTIONS] [FEATURE_OPTIONS]
```

### JAR Options

- `--framework` - Patch framework.jar
- `--services` - Patch services.jar
- `--miui-services` - Patch miui-services.jar
- (Default: all JARs)

### Feature Options

- `--disable-signature-verification` - Apply signature bypass
- `--cn-notification-fix` - Apply notification fix
- `--disable-secure-flag` - Apply secure flag bypass
- (Default: signature verification only)

### Examples

```bash
# Single feature
./scripts/patcher_a15.sh 35 device version --cn-notification-fix

# Multiple features
./scripts/patcher_a15.sh 35 device version \
  --disable-signature-verification \
  --cn-notification-fix

# Selective JAR patching
./scripts/patcher_a15.sh 35 device version \
  --miui-services \
  --cn-notification-fix
```

---

## Platform Integration

### GitHub Actions

**Implementation:**
- Boolean workflow inputs (enable_signature_bypass, enable_cn_notification_fix, enable_disable_secure_flag)
- Shell script constructs feature flags from inputs
- Features displayed in release notes

**Usage:**
Manual workflow dispatch via Actions UI with feature checkboxes.

### Web Interface

**Implementation:**
- Custom styled checkbox components
- JavaScript checkbox state handling
- Feature flags passed to API endpoint

**Usage:**
Visual feature selection before workflow trigger.

### Telegram Bot

**Implementation:**
- Inline keyboard buttons for feature toggle
- Real-time button state updates
- Feature validation before proceeding

**Usage:**
Interactive conversation flow with feature selection step.

### API Routes

**Implementation:**
- Feature flag parameters in request body
- Default values for compatibility
- Boolean to string conversion

**Usage:**
Programmatic workflow triggering with features.

---

## Adding New Features

To add a new feature to the system:

### 1. Add Feature Flag

In both patcher scripts:
```bash
FEATURE_YOUR_NEW_FEATURE=0
```

### 2. Create Feature Functions

For each JAR:
```bash
apply_framework_your_new_feature() {
    local decompile_dir="$1"
    # Implementation here
}

apply_services_your_new_feature() {
    local decompile_dir="$1"
    # Implementation here
}

apply_miui_services_your_new_feature() {
    local decompile_dir="$1"
    # Implementation here
}
```

### 3. Update Main Functions

Add conditional execution:
```bash
if [ $FEATURE_YOUR_NEW_FEATURE -eq 1 ]; then
    apply_framework_your_new_feature "$decompile_dir"
fi
```

### 4. Add Command-Line Option

In main() function:
```bash
--your-new-feature)
    FEATURE_YOUR_NEW_FEATURE=1
    ;;
```

### 5. Update Platforms

- Add workflow input to android15.yml and android16.yml
- Add checkbox to web interface HTML
- Add toggle button to bot callback handlers
- Update API route to pass flag

### 6. Document

- Update FEATURE_SYSTEM.md
- Create feature-specific guide
- Update USAGE.md with examples
- Add to CHANGELOG.md

---

## Benefits

**Flexibility:** Users select only needed patches
**Efficiency:** Faster execution with fewer features
**Transparency:** Clear indication of applied patches  
**Modularity:** Easy maintenance and extension
**User Control:** Complete customization capability

---

## Quality Assurance

- **Backward Compatibility**: All existing usage patterns preserved
- **Error Handling**: Graceful failure with informative messages
- **Code Quality**: Zero linter errors
- **Testing**: Production tested across platforms
- **Documentation**: Comprehensive guides for all features

---

For specific feature implementation details, see:
- [CN_NOTIFICATION_FIX.md](./CN_NOTIFICATION_FIX.md)
- [DISABLE_SECURE_FLAG.md](./DISABLE_SECURE_FLAG.md)
- [USAGE.md](./USAGE.md)
