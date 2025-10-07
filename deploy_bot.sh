#!/bin/bash

# Framework Patcher Bot - Deployment Script
# This script helps deploy the new bot version with auto-update capabilities

set -e  # Exit on any error

echo "🚀 Framework Patcher Bot Deployment Script"
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
BOT_DIR="$SCRIPT_DIR/bot"

print_status "Bot directory: $BOT_DIR"

# Check if we're in the right directory
if [ ! -f "$BOT_DIR/bot.py" ]; then
    print_error "bot.py not found in $BOT_DIR"
    print_error "Please run this script from the project root directory"
    exit 1
fi

# Check if git is available
if ! command -v git &> /dev/null; then
    print_error "Git is not installed or not in PATH"
    exit 1
fi

# Check if python is available
if ! command -v python &> /dev/null && ! command -v python3 &> /dev/null; then
    print_error "Python is not installed or not in PATH"
    exit 1
fi

# Use python3 if python is not available
PYTHON_CMD="python"
if ! command -v python &> /dev/null; then
    PYTHON_CMD="python3"
fi

print_status "Using Python command: $PYTHON_CMD"

# Step 1: Stop existing bot processes
print_status "Stopping existing bot processes..."
BOT_PIDS=$(pgrep -f "bot.py" || true)
if [ -n "$BOT_PIDS" ]; then
    print_warning "Found running bot processes: $BOT_PIDS"
    print_status "Stopping bot processes..."
    pkill -f "bot.py" || true
    sleep 3
    
    # Check if processes are still running
    REMAINING_PIDS=$(pgrep -f "bot.py" || true)
    if [ -n "$REMAINING_PIDS" ]; then
        print_warning "Some processes still running, force killing..."
        pkill -9 -f "bot.py" || true
        sleep 2
    fi
    print_success "Bot processes stopped"
else
    print_status "No running bot processes found"
fi

# Step 2: Backup current session (if exists)
print_status "Backing up current session..."
if [ -f "$BOT_DIR/FrameworkPatcherBot.session" ]; then
    BACKUP_DIR="/tmp/bot_backup_$(date +%Y%m%d_%H%M%S)"
    mkdir -p "$BACKUP_DIR"
    cp "$BOT_DIR/FrameworkPatcherBot.session" "$BACKUP_DIR/"
    print_success "Session backed up to $BACKUP_DIR"
else
    print_status "No existing session found to backup"
fi

# Step 3: Update from Git
print_status "Updating from Git repository..."
cd "$SCRIPT_DIR"

# Fetch latest changes
print_status "Fetching latest changes from origin/master..."
git fetch origin master

# Check for updates
COMMITS_AHEAD=$(git rev-list --count HEAD..origin/master 2>/dev/null || echo "0")
if [ "$COMMITS_AHEAD" -gt 0 ]; then
    print_status "Found $COMMITS_AHEAD new commits"
    
    # Show recent commits
    print_status "Recent commits:"
    git log --oneline HEAD..origin/master | head -5
    
    # Reset to match remote
    print_status "Resetting to match remote repository..."
    git reset --hard origin/master
    git clean -fd
    print_success "Repository updated successfully"
else
    print_status "Repository is already up to date"
fi

# Step 4: Install/Update dependencies
print_status "Installing/updating Python dependencies..."
cd "$BOT_DIR"

if [ -f "requirements.txt" ]; then
    print_status "Installing requirements from requirements.txt..."
    $PYTHON_CMD -m pip install --upgrade pip
    $PYTHON_CMD -m pip install -r requirements.txt
    print_success "Dependencies installed successfully"
else
    print_warning "requirements.txt not found, skipping dependency installation"
fi

# Step 5: Create log directory
LOG_DIR="$BOT_DIR/logs"
if [ ! -d "$LOG_DIR" ]; then
    print_status "Creating log directory: $LOG_DIR"
    mkdir -p "$LOG_DIR"
fi

# Step 6: Start the new bot
print_status "Starting the new bot..."
cd "$BOT_DIR"

# Create startup script
STARTUP_SCRIPT="/tmp/start_bot.sh"
cat > "$STARTUP_SCRIPT" << EOF
#!/bin/bash
cd "$BOT_DIR"
export PYTHONPATH="$SCRIPT_DIR:\$PYTHONPATH"
nohup $PYTHON_CMD bot.py > bot.log 2>&1 &
echo \$! > bot.pid
echo "Bot started with PID: \$(cat bot.pid)"
EOF

chmod +x "$STARTUP_SCRIPT"

# Start the bot
print_status "Executing startup script..."
bash "$STARTUP_SCRIPT"

# Wait a moment for the bot to start
sleep 3

# Check if bot started successfully
if [ -f "bot.pid" ]; then
    BOT_PID=$(cat bot.pid)
    if ps -p "$BOT_PID" > /dev/null 2>&1; then
        print_success "Bot started successfully with PID: $BOT_PID"
        
        # Show recent log output
        if [ -f "bot.log" ]; then
            print_status "Recent bot output:"
            tail -10 bot.log
        fi
        
        print_success "Deployment completed successfully!"
        print_status "Bot is now running with auto-update capabilities"
        print_status "Available commands: /update, /force_update, /restart, /status, /deploy"
        
    else
        print_error "Bot failed to start (PID file exists but process not running)"
        if [ -f "bot.log" ]; then
            print_error "Bot log output:"
            cat bot.log
        fi
        exit 1
    fi
else
    print_error "Bot failed to start (no PID file created)"
    if [ -f "bot.log" ]; then
        print_error "Bot log output:"
        cat bot.log
    fi
    exit 1
fi

# Cleanup
rm -f "$STARTUP_SCRIPT"

print_success "🎉 Framework Patcher Bot deployment completed successfully!"
print_status "The bot now has the following new features:"
print_status "• Automatic updates and restarts"
print_status "• Connection health monitoring"
print_status "• Improved error handling and retry logic"
print_status "• Process management and status monitoring"
print_status "• Graceful shutdown and user notifications"
