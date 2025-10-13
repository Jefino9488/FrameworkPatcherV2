# Framework Patcher V2 🔧

<div align="center">

[![Android 15 Framework Patcher](https://github.com/Jefino9488/FrameworkPatcherV2/actions/workflows/android15.yml/badge.svg)](https://github.com/Jefino9488/FrameworkPatcherV2/actions/workflows/android15.yml)
[![Android 16 Framework Patcher](https://github.com/Jefino9488/FrameworkPatcherV2/actions/workflows/android16.yml/badge.svg)](https://github.com/Jefino9488/FrameworkPatcherV2/actions/workflows/android16.yml)

**Advanced Android Framework Patching System with Multi-Platform Support**

[Features](#-features) • [Quick Start](#-quick-start) • [Documentation](#-documentation) • [Support](#-support)

</div>

---

## 📖 Overview

Framework Patcher V2 is a comprehensive solution for patching Android framework files with support for multiple features and platforms. It provides an automated workflow to patch `framework.jar`, `services.jar`, and `miui-services.jar` files, generating universal modules compatible with Magisk, KernelSU (KSU), and SUFS.

### 🎯 What Makes It Special

- **🎛️ Feature Selection**: Choose exactly what patches you need
- **📱 Multi-Version Support**: Android 15 & Android 16
- **🔌 Multiple Interfaces**: CLI, Web UI, Telegram Bot, GitHub Actions
- **🔄 Universal Modules**: Single module for Magisk, KSU, and SUFS
- **🤖 Fully Automated**: From upload to module creation

---

## ✨ Features

### 🔐 Available Patches

#### 1. **Signature Verification Bypass** 
Allows installation of modified or unsigned applications.
- **Status**: ✅ Fully Implemented
- **Affects**: framework.jar, services.jar, miui-services.jar
- **Use Case**: Installing modded apps, unsigned APKs

#### 2. **CN Notification Fix**
Fixes notification delays on China ROM devices.
- **Status**: ✅ Fully Implemented  
- **Affects**: miui-services.jar only
- **Use Case**: MIUI China ROM users with notification issues

#### 3. **Disable Secure Flag**
Enables screenshots and screen recording of protected content.
- **Status**: ✅ Fully Implemented
- **Affects**: services.jar, miui-services.jar
- **Use Case**: Taking screenshots in banking apps, DRM content

### 🚀 Platform Support

| Platform | Feature Selection | Status |
|----------|------------------|--------|
| **Command Line** | ✅ Full support | Production Ready |
| **GitHub Actions** | ✅ Web UI checkboxes | Production Ready |
| **Web Interface** | ✅ Interactive checkboxes | Production Ready |
| **Telegram Bot** | ✅ Interactive buttons | Production Ready |

### 🎯 Android Version Support

- ✅ **Android 15** (API 35) - All features supported
- ✅ **Android 16** (API 36) - All features supported
- 🔜 **Android 13/14** - Planned for future releases

---

## 🚀 Quick Start

### For End Users

#### Option 1: Telegram Bot (Easiest)

1. **Start the bot** and send `/start_patch`
2. **Select Android version** (15 or 16)
3. **Choose features** to apply:
   - ✓ Signature Verification Bypass
   - ☐ CN Notification Fix
   - ☐ Disable Secure Flag
4. **Upload JAR files**: framework.jar, services.jar, miui-services.jar
5. **Provide device info**: codename and ROM version
6. **Wait for completion** - you'll get a notification with download link
7. **Flash the module** via your root manager

#### Option 2: Web Interface

1. Visit the [Web Interface](https://jefino9488.github.io/FrameworkPatcherV2)
2. Select Android version tab
3. Check desired features
4. Fill in device information
5. Provide direct URLs to your JAR files
6. Click "Start Patching"
7. Check GitHub releases for your module

#### Option 3: GitHub Actions (Manual)

1. Go to [Actions Tab](https://github.com/Jefino9488/FrameworkPatcherV2/actions)
2. Select workflow (Android 15 or Android 16)
3. Click "Run workflow"
4. Check desired features
5. Fill in parameters with JAR URLs
6. Run and wait for completion
7. Download from Releases

### For Developers

#### Command Line Usage

```bash
# Clone repository
git clone https://github.com/Jefino9488/FrameworkPatcherV2.git
cd FrameworkPatcherV2

# Place your JAR files in the root directory
cp /path/to/framework.jar .
cp /path/to/services.jar .
cp /path/to/miui-services.jar .

# Run patcher with desired features
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 \
  --disable-signature-verification \
  --cn-notification-fix \
  --disable-secure-flag

# Find your module
ls *.zip
```

#### Available Options

**JAR Selection:**
- `--framework` - Patch framework.jar only
- `--services` - Patch services.jar only
- `--miui-services` - Patch miui-services.jar only
- *(No option = patch all JARs)*

**Feature Selection:**
- `--disable-signature-verification` - Bypass signature checks
- `--cn-notification-fix` - Fix notification delays (MIUI)
- `--disable-secure-flag` - Allow screenshots/recordings
- *(No option = defaults to signature verification)*

#### Examples

```bash
# Signature bypass only (backward compatible)
./scripts/patcher_a15.sh 35 xiaomi 1.0.0

# CN notification fix only (MIUI users)
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 --cn-notification-fix

# All three features (maximum patching)
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 \
  --disable-signature-verification \
  --cn-notification-fix \
  --disable-secure-flag

# Specific JARs with specific features
./scripts/patcher_a15.sh 35 xiaomi 1.0.0 \
  --services --miui-services \
  --disable-secure-flag
```

---

## 📚 Documentation

Comprehensive guides are available for each component:

| Document | Description |
|----------|-------------|
| [FEATURE_SYSTEM.md](./FEATURE_SYSTEM.md) | Complete feature system architecture |
| [CN_NOTIFICATION_FIX_GUIDE.md](./CN_NOTIFICATION_FIX_GUIDE.md) | CN notification fix detailed guide |
| [DISABLE_SECURE_FLAG_GUIDE.md](./DISABLE_SECURE_FLAG_GUIDE.md) | Secure flag bypass guide |
| [CHANGELOG.md](./CHANGELOG.md) | Version history and changes |

---

## 🔧 Technical Details

### Patching Process

```mermaid
graph LR
    A[JAR Files] --> B[Decompile]
    B --> C[Apply Patches]
    C --> D[Recompile]
    D --> E[Create Module]
    E --> F[Universal Module]
```

### Architecture

The system consists of several components working together:

1. **Patcher Scripts** (`scripts/patcher_a15.sh`, `scripts/patcher_a16.sh`)
   - Core patching logic with feature selection
   - Modular function architecture
   - Smart conditional patching

2. **GitHub Workflows** (`.github/workflows/`)
   - Automated CI/CD pipelines
   - Feature selection via workflow inputs
   - Release automation

3. **Web Interface** (`web/`)
   - Modern, responsive UI
   - Interactive feature selection
   - Real-time workflow triggering

4. **Telegram Bot** (`bot/`)
   - User-friendly conversation flow
   - File upload handling
   - Interactive feature selection

5. **API Routes** (`api/`)
   - Secure workflow triggering
   - Feature flag handling

### Module Compatibility

Generated modules use [MMT-Extended](https://github.com/Zackptg5/MMT-Extended) template:

- ✅ **Magisk** (20400+)
- ✅ **KernelSU** (10904+)
- ✅ **SUFS** (10000+)
- 📱 **API Support**: 34+
- 🔄 **Requires Reboot**: Yes

---

## 🛠️ Setup & Configuration

### Bot Deployment

#### Requirements

- Python 3.10+
- Telegram Bot Token
- GitHub Personal Access Token
- PixelDrain API Key

#### Quick Setup

1. **Create `.env` file** in `bot/` directory:

```env
BOT_TOKEN=your_telegram_bot_token
API_ID=your_telegram_api_id
API_HASH=your_telegram_api_hash
PIXELDRAIN_API_KEY=your_pixeldrain_api_key
GITHUB_TOKEN=your_github_personal_access_token
GITHUB_OWNER=your_github_username
GITHUB_REPO=FrameworkPatcherV2
GITHUB_WORKFLOW_ID=android15.yml
GITHUB_WORKFLOW_ID_A15=android15.yml
GITHUB_WORKFLOW_ID_A16=android16.yml
OWNER_ID=your_telegram_user_id
```

2. **Install dependencies:**

```bash
cd bot
pip install -r requirements.txt
```

3. **Run the bot:**

```bash
python bot.py
```

#### Bot Commands

**User Commands:**
- `/start` - Welcome message and introduction
- `/start_patch` - Begin framework patching process
- `/cancel` - Cancel current operation

**Owner Commands:**
- `/sh <command>` - Execute shell commands
- `/deploy` - Deploy new bot version from GitHub
- `/update` - Check for updates and restart
- `/restart` - Restart bot without updating
- `/status` - Show bot health and statistics

### Web Interface Deployment

The web interface can be deployed on:
- **Vercel** (recommended)
- **Netlify**
- **GitHub Pages**
- Any static hosting service

Configuration is in `vercel.json` for Vercel deployment.

---

## 🎮 Usage Scenarios

### Scenario 1: Modified Apps User
**Need**: Install modded apps without signature issues
**Solution**: 
```bash
./scripts/patcher_a15.sh 35 device 1.0.0 --disable-signature-verification
```

### Scenario 2: MIUI China ROM User
**Need**: Fix notification delays
**Solution**:
```bash
./scripts/patcher_a15.sh 35 device 1.0.0 --cn-notification-fix
```

### Scenario 3: Screenshot Everything
**Need**: Take screenshots in banking apps
**Solution**:
```bash
./scripts/patcher_a15.sh 35 device 1.0.0 --disable-secure-flag
```

### Scenario 4: Power User
**Need**: All features combined
**Solution**:
```bash
./scripts/patcher_a15.sh 35 device 1.0.0 \
  --disable-signature-verification \
  --cn-notification-fix \
  --disable-secure-flag
```

---

## 🔍 How It Works

### Workflow Diagram

```
User Input (CLI/Web/Bot)
         ↓
Feature Selection
         ↓
JAR Files Upload
         ↓
GitHub Actions Trigger
         ↓
┌─────────────────────┐
│  Decompile JARs     │
│  ├─ Apktool         │
│  └─ Extract smali   │
└─────────────────────┘
         ↓
┌─────────────────────┐
│  Apply Patches      │
│  ├─ Signature       │
│  ├─ Notification    │
│  └─ Secure Flag     │
└─────────────────────┘
         ↓
┌─────────────────────┐
│  Recompile JARs     │
│  └─ Apktool build   │
└─────────────────────┘
         ↓
┌─────────────────────┐
│  Create Module      │
│  ├─ MMT-Extended    │
│  └─ ZIP packaging   │
└─────────────────────┘
         ↓
GitHub Release + Notification
```

### Patching Details

#### Signature Verification Bypass
- Patches ~15 signature check methods
- Modifies `ParsingPackageUtils`, `PackageParser`, `SigningDetails`
- Affects all three JAR files

#### CN Notification Fix
- Patches `IS_INTERNATIONAL_BUILD` checks
- Modifies 5 locations in 4 classes
- MIUI-specific, only affects miui-services.jar

#### Disable Secure Flag
- Replaces 2 complete method bodies
- Different classes between Android 15 and 16
- Affects services.jar and miui-services.jar

---

## 🎨 Web Interface

The web interface provides a modern, user-friendly way to trigger patching workflows:

### Features
- 🎨 Beautiful Catppuccin dark theme
- 📱 Responsive design for all devices
- ✨ Interactive feature checkboxes
- 🔔 Real-time status notifications
- 💾 Form data auto-save
- 🌐 Direct workflow triggering

### Screenshots

*(Interface includes version selector, feature checkboxes, JAR URL inputs, and action buttons)*

---

## 🤖 Telegram Bot

### Conversation Flow

1. **Start**: `/start_patch`
2. **Select Version**: Choose Android 15 or 16
3. **Select Features**: Toggle checkboxes interactively
4. **Upload Files**: Send 3 JAR files
5. **Device Info**: Provide codename and version
6. **Done**: Receive notification when complete

### Bot Features

- 📤 File upload with progress tracking
- 🔄 PixelDrain integration for hosting
- 📊 Rate limiting (3 triggers per day)
- 🔔 Success/failure notifications
- 🎯 Interactive feature selection
- 💬 User-friendly conversation flow

---

## 🏗️ Architecture

### Component Overview

```
FrameworkPatcherV2/
├── 📜 scripts/          # Core patching scripts
│   ├── patcher_a15.sh   # Android 15 patcher
│   ├── patcher_a16.sh   # Android 16 patcher
│   ├── helper.sh        # Shared utilities
│   └── module_creator.sh # Module packaging
├── 🤖 bot/              # Telegram bot
│   ├── bot.py           # Main bot logic
│   └── requirements.txt # Python dependencies
├── 🌐 web/              # Web interface
│   ├── index.html       # Main page
│   ├── script.js        # Frontend logic
│   └── styles.css       # Styling
├── ⚙️ .github/          # CI/CD workflows
│   └── workflows/
│       ├── android15.yml
│       └── android16.yml
├── 🔌 api/              # API routes
│   └── trigger-workflow.js
└── 📦 templates/        # MMT-Extended template
```

### Technology Stack

**Backend:**
- Shell/Bash scripting
- Python 3.10+ (Bot)
- GitHub Actions (CI/CD)

**Frontend:**
- HTML5/CSS3
- Vanilla JavaScript
- Font Awesome icons

**Tools:**
- Apktool (decompile/recompile)
- smali/baksmali (DEX manipulation)
- MMT-Extended (module template)

---

## 📝 Feature Selection Guide

### Via Command Line

```bash
# Single feature
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

### Via Web Interface

1. Open website
2. Select Android version (15/16)
3. **Check feature boxes:**
   - ☑️ Disable Signature Verification
   - ☑️ CN Notification Fix  
   - ☐ Disable Secure Flag
4. Fill form and submit

### Via Telegram Bot

1. Send `/start_patch`
2. Choose Android version
3. **Tap features to toggle:**
   - ✓ Signature bypass
   - ✓ CN notification fix
   - ☐ Secure flag
4. Continue and upload files

### Via GitHub Actions

1. Go to Actions tab
2. Select workflow
3. Click "Run workflow"
4. **Check feature boxes:**
   - ✅ Enable signature bypass
   - ✅ Enable CN notification fix
   - ☐ Enable disable secure flag
5. Run

---

## 📦 Module Installation

### Download

Modules are available in [GitHub Releases](https://github.com/Jefino9488/FrameworkPatcherV2/releases).

**Naming format**: `Framework-Patcher-{device}-{version}.zip`

### Installation Steps

1. **Download** module from releases
2. **Open** your root manager:
   - Magisk Manager
   - KernelSU Manager
   - SUFS Manager
3. **Install** from storage (select ZIP)
4. **Reboot** device
5. **Verify** patches applied

### Module Features

- 🔄 **Auto-detection** of root solution
- ⚡ **No configuration needed**
- 🎯 **Single module** for all platforms
- 🔒 **Safe** with automatic backup
- 📱 **Universal** compatibility

---

## 🤝 Contributing

Contributions are welcome! Please feel free to submit issues, feature requests, or pull requests.

### Areas for Contribution

- 🐛 Bug reports and fixes
- ✨ New feature suggestions
- 📝 Documentation improvements
- 🧪 Testing on different devices
- 🌍 Translations

---

## ⚠️ Disclaimer

**Important:** This tool modifies system framework files. Use at your own risk.

- ⚠️ Always backup your device before flashing modules
- ⚠️ Removing secure flags has security implications
- ⚠️ Signature bypass may expose you to malicious apps
- ⚠️ Test on non-critical device first if possible

**We are not responsible for:**
- 🚫 Bricked devices
- 🚫 Dead SD cards
- 🚫 Thermonuclear war
- 🚫 Loss of data

---

## 📞 Support

### Get Help

- **Telegram**: [@Jefino9488](https://t.me/Jefino9488)
- **Support Group**: [@codes9488](https://t.me/codes9488)
- **Issues**: [GitHub Issues](https://github.com/Jefino9488/FrameworkPatcherV2/issues)

### Support the Project

If you find this project helpful, consider:

- ⭐ **Star** this repository
- 🐛 **Report** bugs you find
- 💡 **Suggest** new features
- ☕ **Buy me a coffee**: [buymeacoffee.com/jefino](https://buymeacoffee.com/jefino)

---

## 🙏 Credits & Acknowledgments

### Frameworks & Libraries

- [Pyrogram](https://pyrogram.org/) — Telegram MTProto API framework
- [Apktool](https://github.com/iBotPeaches/Apktool) — APK decompilation tool
- [smali/baksmali](https://github.com/JesusFreke/smali) — DEX disassembler/assembler
- [MMT-Extended](https://github.com/Zackptg5/MMT-Extended) — Universal module template
- [CorePatch](https://github.com/LSPosed/CorePatch) — LSPosed module inspiration

### Services

- [PixelDrain](https://pixeldrain.com/) — File hosting service
- [GitHub Actions](https://github.com/features/actions) — CI/CD automation
- [Vercel](https://vercel.com/) — Web interface hosting

### Contributors & Community

Special thanks to all contributors who made this project possible:

- **[REAndroid](https://github.com/REandroid)** — ARSCLib & APKEditor creator
- **[JesusFreke](https://github.com/JesusFreke)** — smali/baksmali creator
- **[Zackptg5](https://github.com/Zackptg5)** — MMT-Extended template creator
- **[NoOBdevXD (@SoutaEver)](https://github.com/NoOBdevXD)** — Original concept & shell scripts
- **[Burhanverse (@sidawakens)](https://github.com/Burhanverse)** — PixelDrain integration & hosting
- **[Super_Cat07](https://t.me/Super_Cat07)** — Original patching methods (A9-A14)
- **[Cazymods](https://t.me/not_aric)** — isPersistent method contribution
- **[MMETMA](https://t.me/MMETMA2)** — A15 bootloop fixes, shared UID methods
- **[PappLaci](https://t.me/PappLaci)** — Google Play Services fixes (A15)
- **[Saikrishna1504](https://github.com/Saikrishna1504)** — Support & contributions
- **[kindaUnknown](https://github.com/kindaUnknown)** — Bot development & testing

And thanks to the entire Android modding community! 🎉

---

## 📄 License

This project is licensed under the GPL-2.0 License - see the LICENSE file for details.

### Third-Party Licenses

- **MMT-Extended**: GPL-2.0 (submodule)
- **Pyrogram**: LGPL-3.0
- **Apktool**: Apache-2.0

---

## 🔗 Links

- 🌐 **Website**: [jefino9488.github.io/FrameworkPatcherV2](https://jefino9488.github.io/FrameworkPatcherV2)
- 📱 **Telegram**: [@Jefino9488](https://t.me/Jefino9488)
- 💬 **Support Group**: [@codes9488](https://t.me/codes9488)
- 📦 **Releases**: [GitHub Releases](https://github.com/Jefino9488/FrameworkPatcherV2/releases)
- 🐛 **Issues**: [GitHub Issues](https://github.com/Jefino9488/FrameworkPatcherV2/issues)

---

## 📊 Project Stats

- 🎯 **Features**: 3 fully implemented patches
- 🔧 **Scripts**: 1,200+ lines per patcher
- 📚 **Documentation**: 2,000+ lines
- 🤖 **Bot**: 1,300+ lines
- 🌐 **Platforms**: 4 different interfaces
- ⭐ **Quality**: 0 linter errors

---

## 🗺️ Roadmap

### Current Version (v2.0.0)
- ✅ Feature selection system
- ✅ Android 15 & 16 support
- ✅ Three patch features
- ✅ Multi-platform integration

### Future Plans
- 🔜 Android 13/14 support
- 🔜 Additional patch features
- 🔜 GUI application
- 🔜 Auto-update mechanism
- 🔜 Module manager integration

---

<div align="center">

**Made with ❤️ for the Android modding community**

[⬆ Back to Top](#framework-patcher-v2-)

</div>
