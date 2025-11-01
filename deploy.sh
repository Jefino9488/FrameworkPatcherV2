#!/bin/bash

# Framework Patcher Services - Unified Deployment Script
# This script deploys both the Bot and FastAPI services in Pterodactyl container

set -e # Exit on any error

echo "🚀 Framework Patcher Services Deployment"
echo "=========================================="

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Get script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SERVICES_DIR="$SCRIPT_DIR/services"
BOT_DIR="$SERVICES_DIR/bot"
API_DIR="$SERVICES_DIR/web"

print_status "Project root: $SCRIPT_DIR"
print_status "Services directory: $SERVICES_DIR"
print_status "Bot directory: $BOT_DIR"
print_status "API directory: $API_DIR"

# Check if we're in the right directory
if [ ! -d "$SERVICES_DIR" ]; then
    print_error "Services directory not found at $SERVICES_DIR"
    print_error "Please run this script from the project root directory"
    exit 1
fi

if [ ! -f "$BOT_DIR/bot.py" ]; then
    print_error "bot.py not found in $BOT_DIR"
    exit 1
fi

if [ ! -f "$API_DIR/server.py" ]; then
    print_error "server.py not found in $API_DIR"
    exit 1
fi

# Check if git is available
if ! command -v git &>/dev/null; then
    print_error "Git is not installed or not in PATH"
    exit 1
fi

# Detect if running in a container
IS_CONTAINER=false
if [ -f "/.dockerenv" ] || [ -n "$CONTAINER" ] || [ -n "$KUBERNETES_SERVICE_HOST" ] || [ -n "$PTERODACTYL" ]; then
    IS_CONTAINER=true
    print_status "Container environment detected (Pterodactyl/Docker)"
fi

# Detect Python command
PYTHON_CMD=""
PIP_CMD=""

# Try different Python versions (prefer newer versions)
for python_ver in python3.12 python3.11 python3.10 python3 python; do
    if command -v "$python_ver" &>/dev/null; then
        PYTHON_CMD="$python_ver"
        print_status "Found Python: $python_ver"
        break
    fi
done

if [ -z "$PYTHON_CMD" ]; then
    print_error "Python is not installed or not in PATH"
    print_error "Tried: python3.12, python3.11, python3.10, python3, python"
    exit 1
fi

# Detect pip command
for pip_ver in pip3.12 pip3.11 pip3.10 pip3 pip; do
    if command -v "$pip_ver" &>/dev/null; then
        PIP_CMD="$pip_ver"
        print_status "Found pip: $pip_ver"
        break
    fi
done

# Fallback: use python -m pip if pip not found
if [ -z "$PIP_CMD" ]; then
    print_warning "pip command not found, will use '$PYTHON_CMD -m pip'"
    PIP_CMD="$PYTHON_CMD -m pip"
fi

print_status "Using Python: $PYTHON_CMD"
print_status "Using pip: $PIP_CMD"

# Show Python version
PYTHON_VERSION=$($PYTHON_CMD --version 2>&1)
print_success "Python version: $PYTHON_VERSION"

# Show environment summary
if [ "$IS_CONTAINER" = true ]; then
    print_success "Environment: Docker/Pterodactyl Container"
else
    print_success "Environment: Standard Host"
fi
echo ""

# Step 1: Stop existing services
print_status "Stopping existing services..."

# Stop Bot
BOT_PIDS=$(pgrep -f "bot.py" || true)
if [ -n "$BOT_PIDS" ]; then
    print_warning "Found running bot processes: $BOT_PIDS"
    print_status "Stopping bot processes..."
    pkill -f "bot.py" || true
    sleep 2

    # Force kill if needed
    REMAINING_PIDS=$(pgrep -f "bot.py" || true)
    if [ -n "$REMAINING_PIDS" ]; then
        print_warning "Force killing bot processes..."
        pkill -9 -f "bot.py" || true
        sleep 1
    fi
    print_success "Bot processes stopped"
else
    print_status "No running bot processes found"
fi

# Stop API
API_PIDS=$(pgrep -f "server.py\|uvicorn" || true)
if [ -n "$API_PIDS" ]; then
    print_warning "Found running API processes: $API_PIDS"
    print_status "Stopping API processes..."
    pkill -f "server.py\|uvicorn" || true
    sleep 2

    # Force kill if needed
    REMAINING_PIDS=$(pgrep -f "server.py\|uvicorn" || true)
    if [ -n "$REMAINING_PIDS" ]; then
        print_warning "Force killing API processes..."
        pkill -9 -f "server.py\|uvicorn" || true
        sleep 1
    fi
    print_success "API processes stopped"
else
    print_status "No running API processes found"
fi

# Step 2: Backup current sessions
print_status "Backing up current sessions..."
BACKUP_DIR="/tmp/bot_backup_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$BACKUP_DIR"

if [ -f "$BOT_DIR/FrameworkPatcherBot.session" ]; then
    cp "$BOT_DIR/FrameworkPatcherBot.session" "$BACKUP_DIR/"
    print_success "Bot session backed up to $BACKUP_DIR"
fi

# Step 3: Update from Git (if needed)
print_status "Checking for Git updates..."
if [ -d "$SCRIPT_DIR/.git" ]; then
    print_status "Fetching latest changes from origin/master..."
    git fetch origin master

    COMMITS_AHEAD=$(git rev-list --count HEAD..origin/master 2>/dev/null || echo "0")
    if [ "$COMMITS_AHEAD" -gt 0 ]; then
        print_status "Found $COMMITS_AHEAD new commits"
        print_status "Recent commits:"
        git log --oneline HEAD..origin/master | head -5

        print_status "Updating repository..."
        git reset --hard origin/master
        git clean -fd
        print_success "Repository updated successfully"
    else
        print_status "Repository is already up to date"
    fi
else
    print_warning "Not a git repository, skipping update"
fi

# Step 4: Install/Update dependencies
print_status "Installing/updating Python dependencies..."

# Install Bot dependencies
if [ -f "$BOT_DIR/requirements.txt" ]; then
    print_status "Installing bot requirements..."
    $PIP_CMD install -r "$BOT_DIR/requirements.txt" --user 2>/dev/null || $PIP_CMD install -r "$BOT_DIR/requirements.txt"
    print_success "Bot dependencies installed"
else
    print_error "Bot requirements.txt not found at: $BOT_DIR/requirements.txt"
    exit 1
fi

# Install API dependencies (if separate requirements exist)
if [ -f "$API_DIR/requirements.txt" ]; then
    print_status "Installing API requirements..."
    $PIP_CMD install -r "$API_DIR/requirements.txt" --user 2>/dev/null || $PIP_CMD install -r "$API_DIR/requirements.txt"
    print_success "API dependencies installed"
else
    print_status "No separate API requirements found, skipping"
fi

# Step 5: Create log directories
print_status "Creating log directories..."
mkdir -p "$BOT_DIR/logs"
mkdir -p "$API_DIR/logs"
print_success "Log directories created"

# Step 6: Start services
print_status "Starting services..."

# Start API first
print_status "Starting FastAPI server..."
API_STARTUP_SCRIPT="/tmp/start_api.sh"
cat >"$API_STARTUP_SCRIPT" <<EOF
#!/bin/bash
cd "$API_DIR"
export PYTHONPATH="$SCRIPT_DIR:\$PYTHONPATH"
nohup $PYTHON_CMD -m uvicorn server:app --host 0.0.0.0 --port 8000 > api.log 2>&1 &
echo \$! > api.pid
echo "API started with PID: \$(cat api.pid)"
EOF

chmod +x "$API_STARTUP_SCRIPT"
bash "$API_STARTUP_SCRIPT"
sleep 3

# Check if API started
if [ -f "$API_DIR/api.pid" ]; then
    API_PID=$(cat "$API_DIR/api.pid")
    if ps -p "$API_PID" >/dev/null 2>&1; then
        print_success "API started successfully with PID: $API_PID"
    else
        print_warning "API may have failed to start"
        if [ -f "$API_DIR/api.log" ]; then
            print_error "API log output:"
            tail -20 "$API_DIR/api.log"
        fi
    fi
fi

# Start Bot
print_status "Starting Bot..."
BOT_STARTUP_SCRIPT="/tmp/start_bot.sh"
cat >"$BOT_STARTUP_SCRIPT" <<EOF
#!/bin/bash
cd "$BOT_DIR"
export PYTHONPATH="$SCRIPT_DIR:\$PYTHONPATH"
nohup $PYTHON_CMD bot.py > bot.log 2>&1 &
echo \$! > bot.pid
echo "Bot started with PID: \$(cat bot.pid)"
EOF

chmod +x "$BOT_STARTUP_SCRIPT"
bash "$BOT_STARTUP_SCRIPT"
sleep 3

# Check if Bot started
if [ -f "$BOT_DIR/bot.pid" ]; then
    BOT_PID=$(cat "$BOT_DIR/bot.pid")
    if ps -p "$BOT_PID" >/dev/null 2>&1; then
        print_success "Bot started successfully with PID: $BOT_PID"

        # Show recent log output
        if [ -f "$BOT_DIR/bot.log" ]; then
            print_status "Recent bot output:"
            tail -10 "$BOT_DIR/bot.log"
        fi
    else
        print_error "Bot failed to start"
        if [ -f "$BOT_DIR/bot.log" ]; then
            print_error "Bot log output:"
            tail -20 "$BOT_DIR/bot.log"
        fi
    fi
fi

# Step 7: Show service status
echo ""
print_success "🎉 Deployment completed!"
echo ""
print_status "Service Status:"
print_status "==============="

if [ -f "$API_DIR/api.pid" ]; then
    API_PID=$(cat "$API_DIR/api.pid")
    if ps -p "$API_PID" >/dev/null 2>&1; then
        print_success "✅ API Server: Running (PID: $API_PID) - http://localhost:8000"
    else
        print_error "❌ API Server: Not Running"
    fi
else
    print_error "❌ API Server: Not Started"
fi

if [ -f "$BOT_DIR/bot.pid" ]; then
    BOT_PID=$(cat "$BOT_DIR/bot.pid")
    if ps -p "$BOT_PID" >/dev/null 2>&1; then
        print_success "✅ Telegram Bot: Running (PID: $BOT_PID)"
    else
        print_error "❌ Telegram Bot: Not Running"
    fi
else
    print_error "❌ Telegram Bot: Not Started"
fi

echo ""
print_status "Logs location:"
print_status "  Bot: $BOT_DIR/bot.log"
print_status "  API: $API_DIR/api.log"
echo ""
print_status "Available bot commands: /update, /force_update, /restart, /status"

# Cleanup
rm -f "$API_STARTUP_SCRIPT" "$BOT_STARTUP_SCRIPT"

print_success "Deployment script completed!"
