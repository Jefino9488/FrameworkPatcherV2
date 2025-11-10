#!/bin/bash

# Module Creator using FrameworkPatcherModule
# This script creates a module that works with Magisk, KSU, and SUFS

# Source helper functions
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/helper.sh"

# This script is now a wrapper around the create_module function in helper.sh
# To use it, source it and call create_module with the required arguments.
# Example:
# source scripts/module_creator.sh
# create_module "35" "mydevice" "1.0.0"
