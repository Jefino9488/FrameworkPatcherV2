# Framework Patcher Services

This directory contains all the microservices for the Framework Patcher application.

## Directory Structure

```
services/
├── bot/                    # Telegram Bot Service
│   ├── bot.py             # Main bot application
│   ├── provider.py        # Device data provider
│   ├── shell.py           # Shell command utilities
│   ├── requirements.txt   # Python dependencies
│   └── logs/              # Bot logs
│
└── web/                    # Web Frontend & API
    ├── index.html         # Main web interface
    ├── script.js          # Frontend JavaScript
    ├── styles.css         # Styling
    ├── server.py          # FastAPI backend (optional)
    └── logs/              # API logs
```

## Services Overview

### 1. Telegram Bot (`services/bot/`)
- **Purpose**: Interactive Telegram bot for framework patching
- **Runtime**: Pterodactyl container
- **Port**: N/A (Telegram API)
- **Features**:
  - Device codename validation with retry logic
  - MIUI ROM version selection
  - Auto-detection of Android version and API level
  - GitHub workflow triggering
  - File upload handling

### 2. Web Frontend (`services/web/`)
- **Purpose**: Web interface for framework patching
- **Runtime**: Vercel (static + API routes)
- **Port**: 3000 (dev), 80/443 (production)
- **Features**:
  - Modern responsive UI
  - Device and version selection
  - Auto-detection of Android version
  - Feature toggle based on Android version
  - GitHub workflow integration

### 3. FastAPI Backend (`services/web/server.py`)
- **Purpose**: API endpoints for device data
- **Runtime**: Pterodactyl container (optional, can run standalone)
- **Port**: 8000
- **Endpoints**:
  - `GET /` - API information
  - `GET /devices` - List all devices
  - `GET /devices/{codename}/software` - Get device software versions
  - `GET /codenames` - Get all codenames

## Deployment

### Deploy to Pterodactyl (Bot + API)

Run the unified deployment script:

```bash
./deploy.sh
```

This will:
1. Stop existing services
2. Backup current sessions
3. Update from Git (if applicable)
4. Install/update dependencies
5. Start both Bot and API services
6. Show service status

### Deploy Web to Vercel

1. **Prerequisites**:
   - Vercel account
   - Vercel CLI installed (`npm i -g vercel`)

2. **Deploy**:
   ```bash
   vercel --prod
   ```

3. **Environment Variables** (set in Vercel dashboard):
   - None required for static frontend
   - API calls go to your Pterodactyl-hosted FastAPI instance

### Manual Service Control

**Start Bot:**
```bash
cd services/bot
nohup python bot.py > bot.log 2>&1 &
echo $! > bot.pid
```

**Start API:**
```bash
cd services/web
nohup python -m uvicorn server:app --host 0.0.0.0 --port 8000 > api.log 2>&1 &
echo $! > api.pid
```

**Stop Services:**
```bash
pkill -f "bot.py"
pkill -f "uvicorn"
```

**View Logs:**
```bash
# Bot logs
tail -f services/bot/bot.log

# API logs
tail -f services/web/api.log
```

## Environment Configuration

### Bot Environment Variables (`.env` in `services/bot/`)

```env
BOT_TOKEN=your_telegram_bot_token
API_ID=your_telegram_api_id
API_HASH=your_telegram_api_hash
PIXELDRAIN_API_KEY=your_pixeldrain_api_key
GITHUB_TOKEN=your_github_token
GITHUB_OWNER=your_github_username
GITHUB_REPO=your_repo_name
GITHUB_WORKFLOW_ID=android15.yml
GITHUB_WORKFLOW_ID_A15=android15.yml
GITHUB_WORKFLOW_ID_A16=android16.yml
OWNER_ID=your_telegram_user_id
```

### API Configuration (`services/web/server.py`)

The API fetches data from public Xiaomi firmware repositories, no configuration needed.

## Development

### Local Development - Bot

```bash
cd services/bot
python bot.py
```

### Local Development - Web + API

```bash
# Terminal 1 - Start API
cd services/web
python -m uvicorn server:app --reload --port 8000

# Terminal 2 - Serve static files (optional)
python -m http.server 3000
```

Or use Vercel dev:
```bash
vercel dev
```

## Monitoring

### Check Service Status

```bash
# Check if services are running
ps aux | grep -E "bot.py|uvicorn"

# Check PIDs
cat services/bot/bot.pid
cat services/web/api.pid

# Check logs
tail -n 50 services/bot/bot.log
tail -n 50 services/web/api.log
```

### Bot Commands (Telegram)

- `/start` - Start the bot
- `/start_patch` - Begin patching process
- `/cancel` - Cancel current operation
- `/update` - Update bot to latest version
- `/status` - Show bot status (owner only)
- `/restart` - Restart bot (owner only)

## Troubleshooting

### Bot Not Starting

1. Check logs: `cat services/bot/bot.log`
2. Verify environment variables are set
3. Check Python dependencies: `pip install -r services/bot/requirements.txt`
4. Verify Telegram bot token is valid

### API Not Responding

1. Check if port 8000 is available: `lsof -i :8000`
2. Check logs: `cat services/web/api.log`
3. Verify dependencies: `pip install fastapi uvicorn httpx pyyaml`
4. Test API directly: `curl http://localhost:8000/`

### Device Data Not Loading

The bot and web interface fetch device data from:
- https://github.com/XiaomiFirmwareUpdater/xiaomi_devices
- https://github.com/xiaomifirmwareupdater/xiaomifirmwareupdater.github.io

If data fails to load, check internet connectivity and that these repositories are accessible.

## Architecture

```
┌─────────────────┐
│   Vercel CDN    │
│  (Web Frontend) │
└────────┬────────┘
         │
         │ HTTP/HTTPS
         │
         ▼
┌─────────────────────────────────────┐
│     Pterodactyl Container           │
│                                     │
│  ┌──────────────┐  ┌─────────────┐ │
│  │ Telegram Bot │  │  FastAPI    │ │
│  │   (Port N/A) │  │ (Port 8000) │ │
│  └──────┬───────┘  └──────┬──────┘ │
│         │                  │        │
│         │  Shared Provider │        │
│         └──────────────────┘        │
└─────────────────────────────────────┘
         │
         │ GitHub API
         ▼
┌─────────────────┐
│ GitHub Actions  │
│  (Workflows)    │
└─────────────────┘
```

## License

MIT License - See LICENSE file for details
