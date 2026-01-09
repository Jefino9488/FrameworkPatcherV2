#!/bin/bash

# Framework Patcher Services - Unified Deployment Script
# Deploys Bot and FastAPI services using systemd and a shared virtual environment.

set -e # Exit on any error

echo "🚀 Framework Patcher Services Deployment"
echo "=================================================="

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
VENV_DIR="$SCRIPT_DIR/venv"
SERVICES_DIR="$SCRIPT_DIR/services"
BOT_DIR="$SERVICES_DIR/bot"
API_DIR="$SERVICES_DIR/web"
REQUIREMENTS_FILE="$BOT_DIR/requirements.txt"

print_status "Project root: $SCRIPT_DIR"

# Check for Python 3.10+
if command -v python3.10 &>/dev/null; then
    PYTHON_CMD="python3.10"
elif command -v python3 &>/dev/null; then
    PYTHON_CMD="python3"
else
    print_error "Python 3.10+ is required but not found."
    exit 1
fi
print_status "Using Python: $($PYTHON_CMD --version)"

# Step 1: Create/Update Virtual Environment
if [ ! -d "$VENV_DIR" ]; then
    print_status "Creating virtual environment in $VENV_DIR..."
    $PYTHON_CMD -m venv "$VENV_DIR"
else
    print_status "Virtual environment exists in $VENV_DIR."
fi

# Step 2: Install Dependencies
print_status "Installing/Updating dependencies..."
if [ -f "$REQUIREMENTS_FILE" ]; then
    "$VENV_DIR/bin/pip" install --upgrade pip
    "$VENV_DIR/bin/pip" install -r "$REQUIREMENTS_FILE"
    print_success "Dependencies installed."
else
    print_error "requirements.txt not found at $REQUIREMENTS_FILE"
    exit 1
fi

# Step 3: Setup Systemd Services
print_status "Setting up systemd services..."

# We need sudo for systemd operations
if [ "$EUID" -ne 0 ]; then
    print_warning "This script needs sudo privileges to update systemd services."
    # We will use sudo for specific commands
fi

# Create temporary service files to move them to /etc/systemd/system/
# FastAPI Service
FASTAPI_SERVICE_FILE="/tmp/fastapi.service"
cat > "$FASTAPI_SERVICE_FILE" <<EOF
[Unit]
Description=FastAPI Server
After=network.target

[Service]
User=$USER
WorkingDirectory=$API_DIR
Environment="PYTHONPATH=$SCRIPT_DIR"
ExecStart=$VENV_DIR/bin/uvicorn server:app --host 0.0.0.0 --port 8000
Restart=always
RestartSec=10

[Install]
WantedBy=multi-user.target
EOF

# Bot Service
BOT_SERVICE_FILE="/tmp/bot.service"
cat > "$BOT_SERVICE_FILE" <<EOF
[Unit]
Description=Framework Bot
After=network.target

[Service]
User=$USER
WorkingDirectory=$BOT_DIR
Environment="PYTHONPATH=$SCRIPT_DIR"
ExecStart=$VENV_DIR/bin/python3 -m Framework
Restart=always
RestartSec=10
StandardOutput=journal
StandardError=journal

[Install]
WantedBy=multi-user.target
EOF

print_status "Installing service files..."
sudo mv "$FASTAPI_SERVICE_FILE" /etc/systemd/system/fastapi.service
sudo mv "$BOT_SERVICE_FILE" /etc/systemd/system/bot.service

print_status "Reloading systemd daemon..."
sudo systemctl daemon-reload

# Step 4: Enable and Restart Services
print_status "Enabling and restarting services..."
sudo systemctl enable fastapi.service bot.service
sudo systemctl restart fastapi.service bot.service

# Step 5: Check Status
print_status "Checking service status..."
sleep 2

if systemctl is-active --quiet fastapi.service; then
    print_success "FastAPI Service is RUNNING"
else
    print_error "FastAPI Service FAILED to start. Check logs: journalctl -u fastapi.service"
fi

if systemctl is-active --quiet bot.service; then
    print_success "Bot Service is RUNNING"
else
    print_error "Bot Service FAILED to start. Check logs: journalctl -u bot.service"
fi

print_success "Deployment completed!"
