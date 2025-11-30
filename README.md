<div align="center">

# Framework Patcher V2

[![Android 15 Framework Patcher](https://github.com/Jefino9488/FrameworkPatcherV2/actions/workflows/android15.yml/badge.svg)](https://github.com/Jefino9488/FrameworkPatcherV2/actions/workflows/android15.yml)
[![Android 16 Framework Patcher](https://github.com/Jefino9488/FrameworkPatcherV2/actions/workflows/android16.yml/badge.svg)](https://github.com/Jefino9488/FrameworkPatcherV2/actions/workflows/android16.yml)

**Advanced Android Framework Patching System with Multi-Platform Support**

[Features](#features) • [Quick Start](#quick-start) • [Documentation](#documentation) • [DeepWiki](https://deepwiki.com/Jefino9488/FrameworkPatcherV2) • [Support](#support)

</div>

## Overview

Framework Patcher V2 is a comprehensive solution for patching Android framework files (`framework.jar`, `services.jar`,
`miui-services.jar`). It automates the creation of universal modules compatible with Magisk, KernelSU, and SUFS,
supporting Android 15 and 16.

## Features

- **Signature Verification Bypass**: Allows installation of unsigned or modified applications.
- **CN Notification Fix**: Resolves notification delays on MIUI China ROMs.
- **Disable Secure Flag**: Enables screenshots and screen recording in secure apps.
- **Kaorios Toolbox**: Integrates Play Integrity fixes and device spoofing.
- **Multi-Platform Support**: Command-line, Web UI, Telegram Bot, and GitHub Actions.

## Quick Start

### Telegram Bot (Recommended)

1. Message the bot and send `/start_patch`.
2. Follow the interactive prompts to select version and features.
3. Upload your JAR files.

### Web Interface

Visit [framework-patcher-v2.vercel.app](https://framework-patcher-v2.vercel.app) to generate modules via a user-friendly
UI.

### Command Line
```bash
# Clone repository
git clone https://github.com/Jefino9488/FrameworkPatcherV2.git
cd FrameworkPatcherV2

# Run patcher
./scripts/patcher_a15.sh 35 <device_name> <version> [OPTIONS]
```

For detailed usage instructions, see the [User Guide](docs/guides/USAGE.md).

## Documentation

Comprehensive documentation is available in the [`docs/`](docs/README.md) directory.

- [User Guide](docs/guides/USAGE.md)
- [Feature Details](docs/features/FEATURE_SYSTEM.md)
- [Developer Guide](docs/guides/developer_guide.md)

## Support

- **Telegram**: [@Jefino9488](https://t.me/Jefino9488)
- **Support Group**: [@codes9488](https://t.me/codes9488)
- **GitHub Issues**: [Report Issues](https://github.com/Jefino9488/FrameworkPatcherV2/issues)

## License

This project is licensed under the GPL-2.0 License. See the [LICENSE](LICENSE) file for details.

## Credits

See [CREDITS.md](CREDITS.md) for a complete list of contributors and third-party tools.
