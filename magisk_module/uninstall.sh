#!/system/bin/sh

# Framework Patch V2 - Uninstall Script
# This script handles proper cleanup when the module is removed

# Global Variables
MODULE_NAME="Framework Patch V2"
MODULE_ID="mod_frameworks"
LOG_FILE="/data/adb/mod_frameworks.log"
BACKUP_DIR="/data/adb/modules_backup"

# Logging function
log() {
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] UNINSTALL: $1" >> "$LOG_FILE"
  ui_print "$1"
}

# Error handling
error_log() {
  log "ERROR: $1"
  ui_print "ERROR: $1"
}

# Check if running in recovery
if [ -z "$MODPATH" ]; then
  ui_print "********************************"
  ui_print "  Framework Patch V2 Uninstaller"
  ui_print "********************************"
  
  # Set default paths for recovery mode
  MODPATH="/data/adb/modules/$MODULE_ID"
  ui_print "Running in recovery mode"
fi

log "Starting uninstall process for $MODULE_NAME"

# Display uninstall info
ui_print "- Uninstalling Framework Patch V2..."
ui_print "- This will restore original framework files"

# Check if module is actually installed
if [ ! -d "$MODPATH" ]; then
  error_log "Module directory not found: $MODPATH"
  ui_print "Module may already be uninstalled"
  exit 0
fi

# Read installation info if available
if [ -f "$MODPATH/.install_info" ]; then
  ui_print "- Reading installation information..."
  source "$MODPATH/.install_info"
  log "Found installation info - Version: $MODULE_VERSION, Date: $INSTALL_DATE"
  ui_print "-- Installed: $INSTALL_DATE"
  ui_print "-- Version: $MODULE_VERSION"
fi

# Create backup before uninstalling (optional)
if [ -d "$MODPATH" ] && [ -f "$MODPATH/.install_info" ]; then
  ui_print "- Creating backup of module files..."
  mkdir -p "$BACKUP_DIR"
  local backup_name="mod_frameworks_backup_$(date +%Y%m%d_%H%M%S)"
  
  if cp -r "$MODPATH" "$BACKUP_DIR/$backup_name" 2>/dev/null; then
    log "Backup created: $BACKUP_DIR/$backup_name"
    ui_print "-- Backup created successfully"
  else
    error_log "Failed to create backup"
    ui_print "-- Warning: Could not create backup"
  fi
fi

# Clean up any running processes
ui_print "- Stopping module processes..."
# Kill any running processes related to this module
pkill -f "mod_frameworks" 2>/dev/null || true
log "Stopped module processes"

# Remove system modifications
ui_print "- Removing system modifications..."

# Framework files that were replaced
FRAMEWORK_FILES="
/system/framework/framework.jar
/system/framework/services.jar
/system/system_ext/framework/miui-services.jar
"

# Check which files were actually modified
for file in $FRAMEWORK_FILES; do
  if [ -f "$MODPATH$file" ]; then
    log "Found modified file: $file"
    ui_print "-- Found: $(basename "$file")"
  fi
done

# Clean up cache and temporary files
ui_print "- Cleaning up cache and temporary files..."

# Remove OAT files that were generated
for dir in "$MODPATH/system/framework/oat" "$MODPATH/system/system_ext/framework/oat"; do
  if [ -d "$dir" ]; then
    log "Removing OAT directory: $dir"
    rm -rf "$dir"
    ui_print "-- Removed OAT files"
  fi
done

# Remove any temporary files
find "$MODPATH" -name "*.tmp" -delete 2>/dev/null || true
find "$MODPATH" -name "*.bak" -delete 2>/dev/null || true

# Clean up logs (keep last few entries)
if [ -f "$LOG_FILE" ]; then
  ui_print "- Cleaning up log files..."
  tail -n 50 "$LOG_FILE" > "$LOG_FILE.tmp" 2>/dev/null && mv "$LOG_FILE.tmp" "$LOG_FILE" 2>/dev/null || true
  log "Log file cleaned up"
fi

# Remove module-specific data
ui_print "- Removing module data..."
rm -f "$MODPATH/.install_info" 2>/dev/null
rm -f "$MODPATH/.version" 2>/dev/null

# Clean up any Magisk-specific files
rm -f "$MODPATH/auto_mount" 2>/dev/null
rm -f "$MODPATH/skip_mount" 2>/dev/null
rm -f "$MODPATH/system.prop" 2>/dev/null

# Remove the module directory (this will be done by Magisk, but we can clean up our own files)
ui_print "- Final cleanup..."

# Log uninstall completion
log "Uninstall process completed successfully"
log "Module $MODULE_NAME has been removed"

# Display completion message
ui_print "- Uninstall completed!"
ui_print "- Framework Patch V2 has been removed"
ui_print "- Original framework files will be restored on next boot"

# Show support information
ui_print ""
ui_print "Thank you for using Framework Patch V2!"
ui_print "For support: https://t.me/Jefino9488"
ui_print ""

exit 0
