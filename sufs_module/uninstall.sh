#!/system/bin/sh

# SUFS Module Uninstaller
MODULE_NAME="Framework Patch V2 (SUFS)"
LOG_FILE="/data/adb/mod_frameworks_sufs.log"

# Logging function
log() {
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] UNINSTALL: $1" >> "$LOG_FILE"
  ui_print "$1"
}

log "Starting uninstallation of $MODULE_NAME"

# Remove module files
ui_print "- Removing module files..."
rm -rf "$MODPATH"

# Clean up any remaining files
ui_print "- Cleaning up..."

# Remove log file if it exists and is empty or only contains uninstall logs
if [ -f "$LOG_FILE" ]; then
  if [ ! -s "$LOG_FILE" ] || ! grep -q "INSTALL:" "$LOG_FILE"; then
    rm -f "$LOG_FILE"
    ui_print "-- Removed log file"
  else
    ui_print "-- Log file preserved (contains installation history)"
  fi
fi

ui_print "- Uninstallation completed!"
log "SUFS module uninstallation completed successfully"
