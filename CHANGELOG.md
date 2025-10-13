# Changelog

All notable changes to Framework Patcher V2 will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [2.0.0] - 2025-10-13

### 🎉 Major Release - Feature Selection System

This is a **major update** introducing a complete feature selection system across all platforms, allowing users to choose exactly which patches to apply.

### ✨ Added

#### Core Features
- **Feature Selection System** - Users can now select which patches to apply
  - Three selectable features: Signature Verification Bypass, CN Notification Fix, Disable Secure Flag
  - Available across all platforms: CLI, GitHub Actions, Web Interface, Telegram Bot
  - Modular architecture allowing easy addition of future features

- **CN Notification Fix** - NEW FEATURE ✨
  - Fixes notification delays on China ROM devices (MIUI)
  - Patches `IS_INTERNATIONAL_BUILD` checks to return true
  - Affects 5 locations across 4 classes in miui-services.jar
  - Implemented for both Android 15 and Android 16
  - Classes patched:
    - `BroadcastQueueModernStubImpl`
    - `ActivityManagerServiceImpl` (2 locations)
    - `ProcessManagerService`
    - `ProcessSceneCleaner`

- **Disable Secure Flag** - NEW FEATURE ✨
  - Allows screenshots and screen recording of secure content
  - Bypasses secure window flags in banking apps, DRM content, etc.
  - Replaces 2 method bodies completely
  - Implemented for both Android 15 and Android 16
  - Methods patched:
    - Android 15: `WindowManagerServiceStub.isSecureLocked()`
    - Android 16: `WindowState.isSecureLocked()`
    - Both: `WindowManagerServiceImpl.notAllowCaptureDisplay()`

#### Platform Integrations

- **GitHub Actions Workflows**
  - Added 3 boolean inputs for feature selection
  - Dynamic feature flag construction
  - Features displayed in release notes
  - Backward compatible defaults

- **Web Interface**
  - Interactive feature selection checkboxes
  - Beautiful custom checkbox styling
  - Real-time form validation
  - Feature descriptions and tooltips
  - Catppuccin theme integration

- **Telegram Bot**
  - Interactive feature selection with toggle buttons
  - New conversation state: `STATE_WAITING_FOR_FEATURES`
  - Real-time button updates (✓/☐)
  - Features validation (at least one required)
  - Features summary in confirmation messages

- **API Routes**
  - Feature flags support in workflow trigger API
  - Default values for backward compatibility
  - Boolean to string conversion

#### Documentation
- `FEATURE_SYSTEM.md` - Complete feature system architecture (484 lines)
- `CN_NOTIFICATION_FIX_GUIDE.md` - Detailed CN notification fix guide (245 lines)
- `DISABLE_SECURE_FLAG_GUIDE.md` - Secure flag bypass guide (215 lines)
- `IMPLEMENTATION_SUMMARY.md` - Implementation details (330 lines)
- `INTEGRATION_UPDATE.md` - Platform integration guide (250 lines)
- `COMPLETE_IMPLEMENTATION.md` - Comprehensive summary (400+ lines)

### 🔧 Changed

#### Patcher Scripts
- **Refactored** signature verification patches into dedicated functions
- **Reorganized** code into modular feature-specific functions
- **Enhanced** command-line argument parsing
- **Improved** help text with detailed examples
- **Added** feature selection display output
- **Implemented** conditional patching based on feature flags
- **Optimized** to skip unnecessary JAR processing

#### Function Architecture
- Split monolithic patching functions into feature-specific functions:
  - `apply_framework_signature_patches()`
  - `apply_framework_cn_notification_fix()`
  - `apply_framework_disable_secure_flag()`
  - `apply_services_signature_patches()`
  - `apply_services_cn_notification_fix()`
  - `apply_services_disable_secure_flag()`
  - `apply_miui_services_signature_patches()`
  - `apply_miui_services_cn_notification_fix()`
  - `apply_miui_services_disable_secure_flag()`

- Added `replace_entire_method()` helper function
- Improved error handling and logging

#### Scripts
- `scripts/patcher_a15.sh`: 819 → 1,172 lines (+353 lines)
- `scripts/patcher_a16.sh`: 860 → 1,206 lines (+346 lines)

### 🐛 Fixed

- **Improved** `replace_entire_method()` function reliability
  - Added optional class-specific targeting
  - Better error handling (warnings instead of exits)
  - More robust file finding with fallback
  - Clearer error messages with file names
  - Fixed exit code 123 error when patching WindowState

### 🔄 Backward Compatibility

- **Maintained** full backward compatibility
- **Default behavior** unchanged (signature verification if no features specified)
- **Existing workflows** continue to work without modifications
- **CLI usage** remains compatible with previous versions

### 📊 Technical Details

#### Lines of Code Changes
```
scripts/patcher_a15.sh:  +410 -79  lines (infrastructure)
scripts/patcher_a16.sh:  +441 -79  lines (infrastructure)
workflows (both):        +102 -2   lines
web (all files):         +185      lines
bot/bot.py:              +144 -13  lines
api/trigger-workflow.js: +11       lines
Documentation:           +2,000    lines (new files)

Total: ~3,000+ lines added
```

#### Performance Improvements
- **Faster patching** when fewer features selected
- **Smart skipping** of unnecessary operations
- **Optimized** decompilation (only when needed)

---

## [1.0.0] - 2024

### Initial Release

#### Features
- Android 15 and Android 16 support
- Signature verification bypass (only feature)
- Telegram bot interface
- GitHub Actions automation
- PixelDrain file hosting integration
- MMT-Extended module generation
- Multi-platform module support (Magisk, KSU, SUFS)

#### Core Components
- Shell-based patcher scripts
- Telegram bot for file uploads
- GitHub Actions workflows
- Web interface (basic)

---

## Release Notes Format

### Version Format: MAJOR.MINOR.PATCH

- **MAJOR**: Incompatible API changes or major features
- **MINOR**: Backward-compatible feature additions
- **PATCH**: Backward-compatible bug fixes

### Change Categories

- 🎉 **Major Release** - Significant updates
- ✨ **Added** - New features
- 🔧 **Changed** - Changes in existing functionality
- 🗑️ **Deprecated** - Soon-to-be removed features
- 🐛 **Fixed** - Bug fixes
- 🔒 **Security** - Security improvements
- ⚡ **Performance** - Performance improvements

---

## Upgrade Guide

### From 1.x to 2.0

#### Breaking Changes
**None** - Version 2.0 is fully backward compatible!

#### New Features to Explore
1. Try the new feature selection in CLI:
   ```bash
   ./scripts/patcher_a15.sh 35 device version --cn-notification-fix
   ```

2. Test interactive feature selection in Telegram bot:
   ```
   /start_patch
   ```

3. Use the new web interface checkboxes

4. Enable features in GitHub Actions workflows

#### Migration Steps
1. **Pull latest changes**: `git pull origin master`
2. **Update bot** (if self-hosted): `/deploy` command or restart
3. **No configuration changes required** - defaults work out of the box
4. **Start using new features** - everything is backward compatible!

---

## Detailed Change History

### Version 2.0.0 Commits

#### 1. `e048a91` - feat: Add feature selection system infrastructure
**Impact**: Foundation for entire feature system
**Changes**:
- Added global feature flags
- Created modular function structure
- Implemented conditional patching logic
- Updated argument parsing
- Enhanced help text

#### 2. `d5eeccf` - feat: Implement CN notification fix feature
**Impact**: New feature for MIUI users
**Changes**:
- Implemented IS_INTERNATIONAL_BUILD patching
- Added version-specific differences (ProcessSceneCleaner)
- 5 patches across 4 classes
- Both Android 15 and 16 support

#### 3. `a16ed07` - feat: Add feature selection to GitHub Actions workflows
**Impact**: Workflow automation enhancement
**Changes**:
- Added 3 boolean inputs
- Dynamic feature flag construction
- Features in release body
- Backward compatible defaults

#### 4. `a388e80` - feat: Add feature selection UI to web interface
**Impact**: Enhanced user experience
**Changes**:
- Custom styled checkboxes
- Feature descriptions
- JavaScript checkbox handling
- 110+ lines of CSS styling

#### 5. `e46e1a6` - feat: Add interactive feature selection to Telegram bot
**Impact**: Bot user experience improvement
**Changes**:
- New conversation state
- Toggle button handlers
- Real-time UI updates
- Features validation
- Confirmation summaries

#### 6. `b14b57f` - feat: Add feature flags support to API workflow trigger
**Impact**: API completeness
**Changes**:
- Feature flag parameters
- Default value handling
- Boolean conversion

#### 7. `679adb2` - fix: Improve replace_entire_method function
**Impact**: Bug fix for exit code 123
**Changes**:
- Better error handling
- Class-specific targeting
- More robust method finding
- Non-fatal warnings

---

## Feature Comparison Matrix

### v1.0.0 vs v2.0.0

| Feature | v1.0.0 | v2.0.0 |
|---------|--------|--------|
| **Signature Bypass** | ✅ Only feature | ✅ Selectable |
| **CN Notification Fix** | ❌ | ✅ **NEW** |
| **Disable Secure Flag** | ❌ | ✅ **NEW** |
| **Feature Selection** | ❌ | ✅ **NEW** |
| **CLI Feature Flags** | ❌ | ✅ **NEW** |
| **Web Checkboxes** | ❌ | ✅ **NEW** |
| **Bot Interactive Selection** | ❌ | ✅ **NEW** |
| **Workflow Feature Inputs** | ❌ | ✅ **NEW** |
| **Modular Architecture** | ❌ | ✅ **NEW** |
| **Conditional Patching** | ❌ | ✅ **NEW** |
| **Documentation** | Basic | ✅ Comprehensive |

---

## Statistics

### v2.0.0 by the Numbers

- **3** new fully functional features
- **4** platforms with feature selection
- **7** organized commits
- **6** comprehensive documentation files
- **18+** new functions created
- **~3,000** lines of code added
- **~2,000** lines of documentation
- **0** linter errors
- **100%** backward compatible

---

## Known Issues

### Current
- None reported

### Fixed in v2.0.0
- ✅ Exit code 123 when patching WindowState (commit 679adb2)

---

## Future Roadmap

### Planned for v2.1.0
- 🔜 Android 13/14 support
- 🔜 Additional patch features
- 🔜 Module update mechanism
- 🔜 Batch processing support

### Under Consideration
- 💭 GUI desktop application
- 💭 Auto-detection of ROM version
- 💭 Patch validation/verification
- 💭 Rollback mechanism
- 💭 Cloud storage integration options

---

## Support This Project

If Framework Patcher V2 has been helpful to you:

- ⭐ **Star** the repository on GitHub
- 🐛 **Report** any bugs you encounter
- 💡 **Suggest** new features via issues
- 🤝 **Contribute** code or documentation
- ☕ **Support** via [Buy Me a Coffee](https://buymeacoffee.com/jefino)

---

## Version History Summary

| Version | Date | Highlights |
|---------|------|------------|
| **2.0.0** | 2025-10-13 | Feature selection system, CN fix, Disable secure flag |
| **1.0.0** | 2024 | Initial release, Signature bypass, Multi-platform modules |

---

**For detailed feature documentation, see [FEATURE_SYSTEM.md](./FEATURE_SYSTEM.md)**

**For migration guides and technical details, see individual feature guides**

