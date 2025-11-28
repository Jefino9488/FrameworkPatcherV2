#!/usr/bin/env bash
# update_kaorios.sh - Kaorios Toolbox Component Updater
# Fetches latest release from GitHub and updates components

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
KAORIOS_DIR="$PROJECT_ROOT/kaorios_toolbox"
TOOLS_DIR="$PROJECT_ROOT/tools"

# GitHub repository
KAORIOS_REPO="Wuang26/Kaorios-Toolbox"
KAORIOS_API_URL="https://api.github.com/repos/$KAORIOS_REPO/releases/latest"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Logging functions
log() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

err() {
    echo -e "${RED}[ERROR]${NC} $1"
}

info() {
    echo -e "${BLUE}[*]${NC} $1"
}

# Get latest release information from GitHub API
get_latest_release_info() {
    log "Fetching latest Kaorios Toolbox release information..."
    
    local response
    response=$(curl -s "$KAORIOS_API_URL")
    
    if [ -z "$response" ]; then
        err "Failed to fetch release information from GitHub API"
        return 1
    fi
    
    # Extract version tag
    LATEST_VERSION=$(echo "$response" | grep -o '"tag_name": *"[^"]*"' | head -1 | sed 's/"tag_name": *"\(.*\)"/\1/')
    
    if [ -z "$LATEST_VERSION" ]; then
        err "Could not parse release version"
        return 1
    fi
    
    # Extract download URLs for individual assets
    APK_URL=$(echo "$response" | grep -o '"browser_download_url": *"[^"]*KaoriosToolbox\.apk"' | sed 's/"browser_download_url": *"\(.*\)"/\1/')
    XML_URL=$(echo "$response" | grep -o '"browser_download_url": *"[^"]*privapp_whitelist[^"]*\.xml"' | sed 's/"browser_download_url": *"\(.*\)"/\1/')
    DEX_URL=$(echo "$response" | grep -o '"browser_download_url": *"[^"]*classes\.dex"' | sed 's/"browser_download_url": *"\(.*\)"/\1/')
    
    if [ -z "$APK_URL" ] || [ -z "$XML_URL" ] || [ -z "$DEX_URL" ]; then
        err "Could not find required assets in release"
        echo "APK URL: $APK_URL"
        echo "XML URL: $XML_URL"
        echo "DEX URL: $DEX_URL"
        return 1
    fi
    
    info "Latest version: $LATEST_VERSION"
    info "APK: $(basename $APK_URL)"
    info "XML: $(basename $XML_URL)"
    info "DEX: $(basename $DEX_URL)"
    
    return 0
}

# Check current version
get_current_version() {
    if [ -f "$KAORIOS_DIR/version.txt" ]; then
        CURRENT_VERSION=$(cat "$KAORIOS_DIR/version.txt")
        info "Current version: $CURRENT_VERSION"
    else
        CURRENT_VERSION="unknown"
        warn "No version file found (first time setup)"
    fi
}

# Download and extract latest release
download_kaorios_release() {
    local temp_dir="/tmp/kaorios_update_$$"
    mkdir -p "$temp_dir"
    
    log "Downloading Kaorios Toolbox $LATEST_VERSION components..."
    
    # Download APK
    if ! curl -L -o "$temp_dir/KaoriosToolbox.apk" "$APK_URL"; then
        err "Failed to download APK"
        rm -rf "$temp_dir"
        return 1
    fi
    
    # Download permission XML
    if ! curl -L -o "$temp_dir/privapp_whitelist_com.kousei.kaorios.xml" "$XML_URL"; then
        err "Failed to download permission XML"
        rm -rf "$temp_dir"
        return 1
    fi
    
    # Download classes.dex
    if ! curl -L -o "$temp_dir/classes.dex" "$DEX_URL"; then
        err "Failed to download classes.dex"
        rm -rf "$temp_dir"
        return 1
    fi
    
    # Verify files exist and have reasonable sizes
    for file in KaoriosToolbox.apk privapp_whitelist_com.kousei.kaorios.xml classes.dex; do
        if [ ! -f "$temp_dir/$file" ]; then
            err "$file not found after download"
            rm -rf "$temp_dir"
            return 1
        fi
        
        local size=$(stat -f%z "$temp_dir/$file" 2>/dev/null || stat -c%s "$temp_dir/$file")
        if [ "$size" -lt 100 ]; then
            err "$file is too small ($size bytes), download may have failed"
            rm -rf "$temp_dir"
            return 1
        fi
    done
    
    TEMP_DIR="$temp_dir"
    log "✓ Components downloaded successfully"
    
    return 0
}

# Extract utility classes from classes.dex
extract_utility_classes() {
    log "Decompiling classes.dex to extract utility smali classes..."
    
    local dex_path="$TEMP_DIR/classes.dex"
    local extract_dir="$TEMP_DIR/dex_decompiled"
    
    # Ensure baksmali exists
    if [ ! -f "$TOOLS_DIR/baksmali.jar" ]; then
        warn "baksmali.jar not found, downloading..."
        wget -q -O "$TOOLS_DIR/baksmali.jar" "https://bitbucket.org/JesusFreke/smali/downloads/baksmali-2.5.2.jar"
        if [ ! -f "$TOOLS_DIR/baksmali.jar" ]; then
            err "Failed to download baksmali.jar"
            return 1
        fi
    fi
    
    # Use baksmali to decompile classes.dex
    if ! java -jar "$TOOLS_DIR/baksmali.jar" d "$dex_path" -o "$extract_dir"; then
        err "Failed to decompile classes.dex with baksmali"
        return 1
    fi
    
    # Find utility classes in com/android/internal/util/kaorios (framework package)
    local utils_source
    utils_source=$(find "$extract_dir" -type d -path "*/com/android/internal/util/kaorios" | head -1)
    
    if [ -z "$utils_source" ]; then
        err "Could not find kaorios utility classes in decompiled DEX"
        err "Searched path: */com/android/internal/util/kaorios"
        err "Directory structure:"
        find "$extract_dir" -type d | head -10
        return 1
    fi
    
    UTILS_SOURCE="$utils_source"
    local class_count=$(find "$UTILS_SOURCE" -name "*.smali" | wc -l)
    
    log "✓ Found $class_count utility classes"
    
    return 0
}

# Update components in kaorios_toolbox directory
update_components() {
    log "Updating Kaorios Toolbox components..."
    
    # Backup current version
    if [ -d "$KAORIOS_DIR" ]; then
        local backup_dir="$KAORIOS_DIR.backup.$(date +%Y%m%d_%H%M%S)"
        log "Creating backup: $backup_dir"
        cp -r "$KAORIOS_DIR" "$backup_dir"
    fi
    
    # Create/clean directories
    mkdir -p "$KAORIOS_DIR/utils"
    rm -rf "$KAORIOS_DIR/utils/kaorios"
    
    # Copy APK
    log "Updating KaoriosToolbox.apk..."
    cp "$TEMP_DIR/KaoriosToolbox.apk" "$KAORIOS_DIR/"
    
    # Copy permission XML
    log "Updating privapp_whitelist XML..."
    cp "$TEMP_DIR/privapp_whitelist_com.kousei.kaorios.xml" "$KAORIOS_DIR/"
    
    # Copy utility classes
    log "Updating utility classes..."
    cp -r "$UTILS_SOURCE" "$KAORIOS_DIR/utils/"
    
    # Update version file
    echo "$LATEST_VERSION" > "$KAORIOS_DIR/version.txt"
    
    # Remove data directory if it exists (app fetches from repo)
    if [ -d "$KAORIOS_DIR/data" ]; then
        warn "Removing data directory (app fetches from its own repo)"
        rm -rf "$KAORIOS_DIR/data"
    fi
    
    log "✓ Components updated successfully"
    
    return 0
}

# Verify updated components
verify_components() {
    log "Verifying updated components..."
    
    local errors=0
    
    # Check APK
    if [ ! -f "$KAORIOS_DIR/KaoriosToolbox.apk" ]; then
        err "APK not found after update"
        ((errors++))
    else
        local apk_size=$(stat -f%z "$KAORIOS_DIR/KaoriosToolbox.apk" 2>/dev/null || stat -c%s "$KAORIOS_DIR/KaoriosToolbox.apk")
        info "APK size: $(numfmt --to=iec-i --suffix=B $apk_size 2>/dev/null || echo ${apk_size}B)"
    fi
    
    # Check permission XML
    if [ ! -f "$KAORIOS_DIR/privapp_whitelist_com.kousei.kaorios.xml" ]; then
        err "Permission XML not found after update"
        ((errors++))
    fi
    
    # Check utility classes
    local class_count=$(find "$KAORIOS_DIR/utils/kaorios" -name "*.smali" 2>/dev/null | wc -l)
    if [ "$class_count" -eq 0 ]; then
        err "No utility classes found after update"
        ((errors++))
    else
        info "Utility classes: $class_count files"
    fi
    
    # Check version file
    if [ ! -f "$KAORIOS_DIR/version.txt" ]; then
        warn "Version file not found"
    else
        info "Version: $(cat $KAORIOS_DIR/version.txt)"
    fi
    
    if [ $errors -gt 0 ]; then
        err "Verification failed with $errors errors"
        return 1
    fi
    
    log "✓ All components verified successfully"
    
    return 0
}

# Cleanup temporary files
cleanup() {
    if [ -n "$TEMP_DIR" ] && [ -d "$TEMP_DIR" ]; then
        log "Cleaning up temporary files..."
        rm -rf "$TEMP_DIR"
    fi
}

# Main function
main() {
    echo ""
    echo "╔════════════════════════════════════════════════╗"
    echo "║   Kaorios Toolbox Component Updater            ║"
    echo "║   Updates: APK, Permissions, Utility Classes   ║"
    echo "╚════════════════════════════════════════════════╝"
    echo ""
    
    # Set trap for cleanup
    trap cleanup EXIT
    
    # Get current version
    get_current_version
    
    # Get latest release info
    if ! get_latest_release_info; then
        err "Failed to get release information"
        exit 1
    fi
    
    # Check if update is needed
    if [ "$CURRENT_VERSION" = "$LATEST_VERSION" ]; then
        info "Already up to date! ($CURRENT_VERSION)"
        echo ""
        read -p "Force re-download? (y/N): " -n 1 -r
        echo
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            log "No update needed. Exiting."
            exit 0
        fi
    else
        warn "Update available: $CURRENT_VERSION → $LATEST_VERSION"
    fi
    
    # Download and extract
    if ! download_kaorios_release; then
        err "Failed to download release"
        exit 1
    fi
    
    # Extract utility classes
    if ! extract_utility_classes; then
        err "Failed to extract utility classes"
        exit 1
    fi
    
    # Update components
    if ! update_components; then
        err "Failed to update components"
        exit 1
    fi
    
    # Verify
    if ! verify_components; then
        err "Component verification failed"
        exit 1
    fi
    
    echo ""
    echo "╔════════════════════════════════════════════════╗"
    echo "║   ✅ Update Complete!                          ║"
    echo "║   Version: $LATEST_VERSION"
    echo "║                                                ║"
    echo "║   Updated components:                          ║"
    echo "║   • KaoriosToolbox.apk                         ║"
    echo "║   • privapp_whitelist XML                      ║"
    echo "║   • $(find "$KAORIOS_DIR/utils/kaorios" -name "*.smali" | wc -l) utility classes                          ║"
    echo "╚════════════════════════════════════════════════╝"
    echo ""
    
    warn "Note: Data files removed - app fetches from its own repository"
    
    return 0
}

# Run main function
main "$@"
