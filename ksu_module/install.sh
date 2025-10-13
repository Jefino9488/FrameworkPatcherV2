# KernelSU Module Configuration
SKIPMOUNT=false
PROPFILE=false
REPLACE="
/system/framework/framework.jar
/system/framework/services.jar
/system/system_ext/framework/miui-services.jar
"

# Global Variables
MODULE_NAME="Framework Patch V2 (KSU)"
MODULE_VERSION="1.0"
LOG_FILE="/data/adb/mod_frameworks_ksu.log"
DEX2OAT_PATHS=(
  "/apex/com.android.art/bin/dex2oat"
  "/system/bin/dex2oat"
  "/apex/com.android.runtime/bin/dex2oat"
)

# Logging function
log() {
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$LOG_FILE"
  ui_print "$1"
}

# Error handling
error_exit() {
  log "ERROR: $1"
  ui_print "ERROR: $1"
  exit 1
}

# Check KernelSU requirements
check_ksu_requirements() {
  log "Checking KernelSU requirements..."
  
  # Check if KernelSU is available
  if [ ! -d "/data/adb/ksu" ]; then
    error_exit "KernelSU not detected. Please install KernelSU first."
  fi
  
  # Check KernelSU version
  if [ -f "/data/adb/ksu/version" ]; then
    local ksu_version=$(cat /data/adb/ksu/version)
    log "KernelSU version: $ksu_version"
  else
    ui_print "WARNING: Cannot determine KernelSU version"
  fi
  
  # Check Android version
  if [ "$API" -lt 34 ]; then
    error_exit "This module requires Android 14+ (API 34+)"
  fi
  
  # Check architecture
  if [ "$ARCH" != "arm64" ]; then
    ui_print "WARNING: This module is optimized for ARM64. Your architecture: $ARCH"
  fi
  
  # Check if we have required tools
  local found_dex2oat=false
  for path in "${DEX2OAT_PATHS[@]}"; do
    if [ -x "$path" ]; then
      DEX2OAT_PATH="$path"
      found_dex2oat=true
      log "Found dex2oat at: $path"
      break
    fi
  done
  
  if [ "$found_dex2oat" = false ]; then
    ui_print "WARNING: dex2oat not found. OAT files will not be generated."
    ui_print "This may cause performance issues but the module will still work."
  fi
  
  log "KernelSU requirements check completed"
}

print_modname() {
  ui_print "********************************"
  ui_print "  Framework Patcher V2 (KSU)"
  ui_print "  Version: $MODULE_VERSION"
  ui_print "********************************"
}

on_install() {
  log "Starting installation of $MODULE_NAME v$MODULE_VERSION"
  
  # Check KernelSU requirements
  check_ksu_requirements
  
  ui_print "- Extracting module files..."
  if ! unzip -o "$ZIPFILE" 'system/*' -d "$MODPATH" 2>/dev/null; then
    error_exit "Failed to extract module files"
  fi
  log "Module files extracted successfully"

  DIRS_TO_PROCESS="$MODPATH/system/framework $MODPATH/system/system_ext/framework"
  local processed_files=0
  local failed_files=0

  ui_print "- Generating .oat files for optimized performance..."

  for DIR in $DIRS_TO_PROCESS; do
    if [ ! -d "$DIR" ]; then
      log "Directory $DIR does not exist, skipping..."
      continue
    fi
    
    OAT_DIR="$DIR/oat"
    mkdir -p "$OAT_DIR"
    log "Created OAT directory: $OAT_DIR"

    for JAR in "$DIR"/*.jar; do
      if [ -f "$JAR" ]; then
        local jar_name=$(basename "$JAR")
        OAT_FILE="$OAT_DIR/${jar_name}.oat"
        
        log "Processing $jar_name..."
        ui_print "-- Processing $jar_name..."

        if [ -x "$DEX2OAT_PATH" ]; then
          # Try different instruction sets based on architecture
          local instruction_set="arm64"
          case "$ARCH" in
            "arm") instruction_set="arm" ;;
            "arm64") instruction_set="arm64" ;;
            "x86") instruction_set="x86" ;;
            "x64") instruction_set="x86_64" ;;
          esac
          
          if "$DEX2OAT_PATH" --dex-file="$JAR" --oat-file="$OAT_FILE" --instruction-set="$instruction_set" --compiler-filter=speed 2>/dev/null; then
            log "Successfully generated ${jar_name}.oat"
            ui_print "-- ✓ Generated ${jar_name}.oat"
            processed_files=$((processed_files + 1))
          else
            log "Failed to generate ${jar_name}.oat"
            ui_print "-- ✗ Failed to process $jar_name"
            failed_files=$((failed_files + 1))
          fi
        else
          log "dex2oat not found, skipping $jar_name"
          ui_print "-- ⚠ Skipping $jar_name (dex2oat not found)"
          failed_files=$((failed_files + 1))
        fi
      fi
    done
  done

  # Installation summary
  ui_print "- Installation completed!"
  ui_print "-- Processed: $processed_files files"
  if [ $failed_files -gt 0 ]; then
    ui_print "-- Failed: $failed_files files"
  fi
  
  # Create installation info file
  cat > "$MODPATH/.install_info" << EOF
MODULE_NAME=$MODULE_NAME
MODULE_VERSION=$MODULE_VERSION
INSTALL_DATE=$(date '+%Y-%m-%d %H:%M:%S')
API_LEVEL=$API
ARCH=$ARCH
PROCESSED_FILES=$processed_files
FAILED_FILES=$failed_files
MODULE_TYPE=KSU
EOF

  log "KernelSU module installation completed successfully"
}

set_permissions() {
  log "Setting permissions..."
  
  # Set basic permissions
  set_perm_recursive "$MODPATH" 0 0 0755 0644
  
  # Set executable permissions for uninstall script
  [ -f "$MODPATH/uninstall.sh" ] && chmod 755 "$MODPATH/uninstall.sh"
  
  # Set specific permissions for framework files
  set_perm_recursive "$MODPATH/system/framework" 0 0 0755 0644
  set_perm_recursive "$MODPATH/system/system_ext/framework" 0 0 0755 0644
  
  log "Permissions set successfully"
}
