# Framework Patcher`V2`

Telegram bot for patching Android framework files and generating Magisk modules. Users upload framework JAR files
through the bot, which triggers a GitHub Actions workflow to create patched Magisk modules.

## Features

- Support only for Android 15 (A15) at the moment
- Patching of `framework.jar`, `services.jar`, and `miui-services.jar`
- Automatic decompilation and recompilation of JAR files
- Telegram-based interface for easy file submission
- Automated framework patching using GitHub Actions
- Magisk module generation
- PixelDrain integration for file hosting
- Telegram notifications for build status
- Support for multiple Android versions (A13,A14) will be added in the future

## Usage

### For End Users

1. Start a chat with the bot
2. Send `/start_patch` to begin
3. Upload required JAR files:
    - `framework.jar`
    - `services.jar`
    - `miui-services.jar`
4. Provide device codename (e.g., `rothko`)
5. Provide ROM version (e.g., `OS2.0.200.33`)
6. The bot will trigger the patching process and notify you when complete
7. Download the Magisk module from the GitHub release

### Commands:

- `/start`: Show welcome message
- `/start_patch`: Begin patching process
- `/cancel`: Cancel current operation
- `/sh <command>` (Owner only): Execute shell commands

### For Developers

#### Requirements:

- Python 3.10
- Docker (optional)
- Telegram Bot Token
- GitHub Personal Access Token
- PixelDrain API Key

#### Setup:

1. Clone repository:
   ```bash
   git clone https://github.com/Jefino9488/FrameworkPatcherV2.git
   cd FrameworkPatcherV2
2. Create `.env` file in `bot/` directory with:
   ```env
   BOT_TOKEN=your_telegram_bot_token
   API_ID=your_telegram_api_id
   API_HASH=your_telegram_api_hash
   PIXELDRAIN_API_KEY=your_pixeldrain_api_key
   GITHUB_TOKEN=your_github_token
   GITHUB_OWNER=your_github_username
   GITHUB_REPO=your_repository_name
   WORKFLOW_ID=patcher
   OWNER_ID=your_telegram_user_id
   ```
3. Build Docker image:
   ```bash
   docker build -t patcherbot .
   ```
4. Run container:
   ```bash
   docker run -d --name patcher_bot patcherbot
   ```

## Workflow

1. User uploads JAR files via Telegram bot
2. Bot uploads files to PixelDrain
3. Bot triggers GitHub Actions workflow with file URLs
4. GitHub Actions:
    - Downloads JAR files
    - Decompiles using baksmali
    - Applies patches using Python scripts
    - Recompiles using smali
    - Creates Magisk module
    - Publishes GitHub release
5. User receives Telegram notification with download link

## Support

For support contact: [@Jefino9488](https://t.me/Jefino9488)

## Credits

**Frameworks & Libraries**

* [Pyrogram](https://pyrogram.org/) — Telegram MTProto API framework
* [ARSCLib](https://github.com/REandroid/ARSCLib) — Android resource table handling
* [APKEditor](https://github.com/REandroid/APKEditor) — APK manipulation tool
* [smali/baksmali](https://github.com/JesusFreke/smali) — DEX disassembler/assembler
* [7-Zip](https://www.7-zip.org/) — File archiving utility
* [CorePatch](https://github.com/LSPosed/CorePatch) — LSPosed module

**Services**

* [PixelDrain](https://pixeldrain.com/) — File hosting service
* [GitHub Actions](https://github.com/Jefino9488/FrameworkPatcherV2/actions) — CI/CD for automation
* [DanBot Hosting](https://danbot.host/) — Hosting for the bot [Burhanverse](https://github.com/Burhanverse)

**Developers & Contributors**

* [REAndroid](https://github.com/REandroid) — Creator of ARSCLib & APKEditor
* [JesusFreke](https://github.com/JesusFreke) — Creator of smali/baksmali
* [NoOBdevXD (@SoutaEver)](https://github.com/NoOBdevXD) — Original idea & initial shell script implementation
* [Burhanverse (@sidawakens)](https://github.com/Burhanverse) — Adapted PixelDrain bot code & hosting
* [Super\_Cat07](https://t.me/Super_Cat07) — Original method on A9–A14
* [Cazymods](https://t.me/not_aric) — Contributed `isPersistent` method
* [MMETMA](https://t.me/MMETMA2) — Fixed bootloop issues on A15, shared UID methods
* [PappLaci](https://t.me/PappLaci) — Fixed Google Play Services issues on A15
* [Saikrishna1504](https://github.com/Saikrishna1504) — Support, encouragement & contributions
* [kindaUnknown](https://github.com/kindaUnknown) — Contributions in bot development, testing & support

**Acknowledgements**

* [All Contributors](https://allcontributors.org/docs/en/emoji-key) — For their contributions

