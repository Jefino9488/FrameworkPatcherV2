#!/bin/bash

# Shell script linting and formatting tool
# This script helps maintain code quality without breaking functionality

set -e

echo "Framework Patcher V2 - Code Quality Check"
echo "============================================="

# Check if shellcheck is installed
if ! command -v shellcheck >/dev/null 2>&1; then
    echo "ERROR: shellcheck not found."
    echo "Please install shellcheck manually: https://github.com/koalaman/shellcheck"
    echo "On Ubuntu/Debian: sudo apt-get install shellcheck"
    echo "On macOS: brew install shellcheck"
    exit 1
fi

# Check if shfmt is installed
if ! command -v shfmt >/dev/null 2>&1; then
    echo "ERROR: shfmt not found."
    echo "Please install shfmt manually: https://github.com/mvdan/sh"
    echo "On Ubuntu/Debian: sudo apt-get install shfmt"
    echo "On macOS: brew install shfmt"
    exit 1
fi

echo "SUCCESS: Required tools found"

# Lint all shell scripts
echo ""
echo "Linting shell scripts..."
echo "============================"

SCRIPTS=(
    "scripts/helper.sh"
    "scripts/module_creator.sh"
    "scripts/patcher_a13.sh"
    "scripts/patcher_a14.sh"
    "scripts/patcher_a15.sh"
    "scripts/patcher_a16.sh"
    "deploy_bot.sh"
)

LINT_ERRORS=0

for script in "${SCRIPTS[@]}"; do
    if [ -f "$script" ]; then
        echo "Checking $script..."
        if shellcheck -e SC1091 "$script"; then
            echo "SUCCESS: $script - No issues found"
        else
            echo "ERROR: $script - Issues found"
            LINT_ERRORS=$((LINT_ERRORS + 1))
        fi
    else
        echo "WARNING: $script - File not found"
    fi
done

# Format all shell scripts
echo ""
echo "Formatting shell scripts..."
echo "==============================="

for script in "${SCRIPTS[@]}"; do
    if [ -f "$script" ]; then
        echo "Formatting $script..."
        shfmt -w -i 4 -ci "$script"
        echo "SUCCESS: $script - Formatted"
    fi
done

# Summary
echo ""
echo "Summary"
echo "=========="
if [ $LINT_ERRORS -eq 0 ]; then
    echo "SUCCESS: All scripts passed linting"
    echo "SUCCESS: All scripts formatted"
    echo ""
    echo "SUCCESS: Code quality check completed successfully!"
else
    echo "ERROR: $LINT_ERRORS script(s) have linting issues"
    echo "Please review and fix the issues above"
    exit 1
fi
