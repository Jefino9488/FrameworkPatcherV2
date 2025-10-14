<div align="center">

# Framework Patcher V2

[![Android 15 Framework Patcher](https://github.com/Jefino9488/FrameworkPatcherV2/actions/workflows/android15.yml/badge.svg)](https://github.com/Jefino9488/FrameworkPatcherV2/actions/workflows/android15.yml)
[![Android 16 Framework Patcher](https://github.com/Jefino9488/FrameworkPatcherV2/actions/workflows/android16.yml/badge.svg)](https://github.com/Jefino9488/FrameworkPatcherV2/actions/workflows/android16.yml)

**Advanced Android Framework Patching System with Multi-Platform Support**

[Features](#features) • [Quick Start](#quick-start) • [Documentation](#documentation) • [DeepWiki](https://deepwiki.com/Jefino9488/FrameworkPatcherV2) • [Support](#support)

</div>

## Overview

Framework Patcher V2 is a comprehensive solution for patching Android framework files with support for multiple features and platforms. It automates the process of patching `framework.jar`, `services.jar`, and `miui-services.jar` files, generating universal modules compatible with Magisk, KernelSU (KSU), and SUFS.

### Key Features

- **Feature Selection System**: Choose exactly which patches to apply
- **Multi-Version Support**: Android 15 and Android 16
- **Multiple Interfaces**: Command-line, Web UI, Telegram Bot, GitHub Actions
- **Universal Modules**: Single module works with Magisk, KSU, and SUFS
- **Fully Automated**: End-to-end automation from upload to module creation

## Features

### Available Patches

#### 1. Signature Verification Bypass
Allows installation of modified or unsigned applications by bypassing APK signature verification.

- **Status**: Fully Implemented
- **Affects**: framework.jar, services.jar, miui-services.jar
- **Use Case**: Installing modified apps, testing unsigned APKs
- **Default**: Enabled (backward compatible)

#### 2. CN Notification Fix
Fixes notification delays on China ROM devices by patching IS_INTERNATIONAL_BUILD checks.

- **Status**: Fully Implemented
- **Affects**: miui-services.jar only
- **Use Case**: MIUI China ROM users experiencing notification delays
- **Default**: Disabled

#### 3. Disable Secure Flag
Removes secure window flags that prevent screenshots and screen recordings.

- **Status**: Fully Implemented
- **Affects**: services.jar, miui-services.jar
- **Use Case**: Taking screenshots in banking apps, recording DRM content
- **Default**: Disabled
- **Warning**: Has security implications, use responsibly

### Platform Support

| Platform | Feature Selection | Status |
|----------|------------------|--------|
| Command Line | Full support with flags | Production Ready |
| GitHub Actions | Boolean inputs in workflow UI | Production Ready |
| Web Interface | Interactive checkboxes | Production Ready |
| Telegram Bot | Interactive toggle buttons | Production Ready |

### Android Version Support

- **Android 15** (API 35) - All features supported
- **Android 16** (API 36) - All features supported
- Android 13/14 - Planned for future releases

## Quick Start

### For End Users

#### Option 1: Telegram Bot (Recommended)

1. Message the bot and send `/start_patch`
2. Select Android version (15 or 16)
3. Choose features to apply
4. Upload the 3 required JAR files
5. Provide device codename and ROM version
6. Wait for notification when build completes
7. Download and flash the module

#### Option 2: Web Interface

1. Visit the web interface at [framework-patcher-v2.vercel.app](https://framework-patcher-v2.vercel.app)
2. Select Android version tab
3. Check desired features
4. Fill in device information and JAR file URLs
5. Submit and monitor workflow progress
6. Download module from GitHub releases

#### Option 3: GitHub Actions

1. Navigate to the [Actions Tab](https://github.com/Jefino9488/FrameworkPatcherV2/actions)
2. Select appropriate workflow (Android 15 or 16)
3. Click "Run workflow"
4. Enable desired features via checkboxes
5. Provide device information and JAR URLs
6. Run workflow and download from releases

### For Developers

#### Command Line Usage

```bash
# Clone repository
git clone https://github.com/Jefino9488/FrameworkPatcherV2.git
cd FrameworkPatcherV2

# Place JAR files in root directory
cp /path/to/framework.jar .
cp /path/to/services.jar .
cp /path/to/miui-services.jar .

# Run patcher with desired features
./scripts/patcher_a15.sh 35 <device_name> <version> [OPTIONS]
```

#### Command-Line Options

**JAR Selection:**
- `--framework` - Patch framework.jar only
- `--services` - Patch services.jar only  
- `--miui-services` - Patch miui-services.jar only
- (Default: patch all JARs)

**Feature Selection:**
- `--disable-signature-verification` - Bypass signature checks
- `--cn-notification-fix` - Fix notification delays
- `--disable-secure-flag` - Allow screenshots/recordings
- (Default: signature verification only)

#### Examples

```bash
# Default behavior (signature bypass only)
./scripts/patcher_a15.sh 35 xiaomi 1.0.0

# CN notification fix only
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 --cn-notification-fix

# Multiple features
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 \
  --disable-signature-verification \
  --cn-notification-fix

# All features
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 \
  --disable-signature-verification \
  --cn-notification-fix \
  --disable-secure-flag
```

## Documentation

**Comprehensive Documentation:** [https://deepwiki.com/Jefino9488/FrameworkPatcherV2](https://deepwiki.com/Jefino9488/FrameworkPatcherV2)

The DeepWiki provides a complete, searchable documentation hub with:
- Interactive navigation through all system components
- Architectural diagrams and data flow visualizations  
- Cross-referenced component relationships
- Detailed implementation guides

Additional documentation is available in the `docs/` directory:

| Document | Description |
|----------|-------------|
| [USAGE.md](./docs/USAGE.md) | Detailed usage guide for all platforms |
| [FEATURE_SYSTEM.md](./docs/FEATURE_SYSTEM.md) | Feature system architecture |
| [CN_NOTIFICATION_FIX.md](./docs/CN_NOTIFICATION_FIX.md) | CN notification fix implementation |
| [DISABLE_SECURE_FLAG.md](./docs/DISABLE_SECURE_FLAG.md) | Secure flag bypass implementation |
| [CHANGELOG.md](./CHANGELOG.md) | Version history and release notes |
| [CREDITS.md](./CREDITS.md) | Complete credits and acknowledgments |

## Technical Overview

### Architecture

The Framework Patcher V2 consists of five main components:

1. **Patcher Scripts** - Core patching logic with modular feature system
2. **GitHub Workflows** - Automated CI/CD pipeline with feature inputs
3. **Web Interface** - Modern UI for triggering workflows
4. **Telegram Bot** - Conversational interface with file upload
5. **API Routes** - Secure workflow triggering endpoints

### Technology Stack

**Backend:**
- Shell/Bash scripting for patching logic
- Python 3.10+ for Telegram bot
- GitHub Actions for CI/CD automation

**Frontend:**
- HTML5/CSS3 for web interface
- Vanilla JavaScript
- Catppuccin dark theme

**Tools:**
- Apktool for JAR decompilation/recompilation
- smali/baksmali for DEX manipulation
- MMT-Extended template for universal modules

### Module Compatibility

Generated modules use MMT-Extended template and support:

- **Magisk** (version 20400+)
- **KernelSU** (version 10904+)
- **SUFS** (version 10000+)
- **API Level**: 34+
- **Reboot Required**: Yes

## Setup

### Bot Deployment

#### Requirements

- Python 3.10 or higher
- Telegram Bot Token
- GitHub Personal Access Token
- PixelDrain API Key

#### Configuration

Create a `.env` file in the `bot/` directory:

   ```env
   BOT_TOKEN=your_telegram_bot_token
   API_ID=your_telegram_api_id
   API_HASH=your_telegram_api_hash
   PIXELDRAIN_API_KEY=your_pixeldrain_api_key
   GITHUB_TOKEN=your_github_token
   GITHUB_OWNER=your_github_username
   GITHUB_REPO=FrameworkPatcherV2
   GITHUB_WORKFLOW_ID_A15=android15.yml
   GITHUB_WORKFLOW_ID_A16=android16.yml
   OWNER_ID=your_telegram_user_id
   ```

#### Installation

   ```bash
cd bot
pip install -r requirements.txt
python bot.py
```

#### Bot Commands

**User Commands:**
- `/start` - Display welcome message
- `/start_patch` - Begin patching process
- `/cancel` - Cancel current operation

**Owner Commands:**
- `/sh <command>` - Execute shell commands
- `/deploy` - Deploy updates from GitHub
- `/update` - Check and apply updates
- `/restart` - Restart bot
- `/status` - Show bot status

### Web Interface Deployment

The web interface can be deployed on:
- Vercel (recommended)
- Netlify
- GitHub Pages
- Any static hosting service

Configuration is provided in `vercel.json`.

## Module Installation

### Download

Modules are available in [GitHub Releases](https://github.com/Jefino9488/FrameworkPatcherV2/releases).

Naming format: `Framework-Patcher-{device}-{version}.zip`

### Installation

1. Download module from releases
2. Open your root manager (Magisk/KernelSU/SUFS)
3. Install module from storage
4. Reboot device
5. Verify patches applied

### Module Features

- Automatic detection of root solution
- No additional configuration required
- Single module for all platforms
- Safe installation with automatic backup

## Contributing

Contributions are welcome. Please submit issues or pull requests through GitHub.

### Areas for Contribution

- Bug reports and fixes
- New feature suggestions
- Documentation improvements
- Testing on different devices
- Translation support

## Disclaimer

**Important:** This tool modifies system framework files. Use at your own risk.

- Always backup your device before installing modules
- Disabling secure flags has security implications
- Signature bypass may expose you to malicious applications
- Test on non-critical devices when possible

**We are not responsible for:**
- Bricked devices
- Data loss
- Security vulnerabilities
- System instability

---

## Support

### Get Help

- **Telegram**: [@Jefino9488](https://t.me/Jefino9488)
- **Support Group**: [@codes9488](https://t.me/codes9488)
- **GitHub Issues**: [Report Issues](https://github.com/Jefino9488/FrameworkPatcherV2/issues)

### Support the Project

If you find this project useful:

- Star this repository
- Report bugs and issues
- Contribute code or documentation
- Support via [Buy Me a Coffee](https://buymeacoffee.com/jefino)

## Credits

This project is built on the work of many talented developers and contributors.

For a complete list of acknowledgments, see [CREDITS.md](./CREDITS.md).

### Key Contributors

- **REAndroid** - ARSCLib and APKEditor
- **JesusFreke** - smali/baksmali tools
- **Zackptg5** - MMT-Extended template
- **NoOBdevXD** - Original concept
- **Burhanverse** - Bot integration and hosting
- **MMETMA** - Android 15 fixes
- **PappLaci** - Google Play Services fixes

And many others - see [full credits](./CREDITS.md).

## License

This project is licensed under the GPL-2.0 License. See the LICENSE file for details.

### Third-Party Licenses

- **MMT-Extended**: GPL-2.0
- **Pyrogram**: LGPL-3.0
- **Apktool**: Apache-2.0

## Links

- **Website**: [framework-patcher-v2.vercel.app](https://framework-patcher-v2.vercel.app)
- **Telegram**: [@Jefino9488](https://t.me/Jefino9488)
- **Support Group**: [@codes9488](https://t.me/codes9488)
- **Releases**: [GitHub Releases](https://github.com/Jefino9488/FrameworkPatcherV2/releases)
- **Issues**: [GitHub Issues](https://github.com/Jefino9488/FrameworkPatcherV2/issues)


<div align="center">

**Made with ❤️ for the Android modding community**

[Back to Top](#framework-patcher-v2)

</div>
