#!/bin/bash

# Get the directory where the script is located
# BASH_SOURCE[0] is the path to the script itself
# dirname gets the directory part of that path
SCRIPT_DIR="$(dirname "${BASH_SOURCE[0]}")"

# Create a backup directory if it doesn't exist (optional, but good practice)
BACKUP_DIR="${SCRIPT_DIR}/config_backup_$(date +%Y%m%d%H%M%S)"
mkdir -p "$BACKUP_DIR"

# Copy files to the determined script directory
cp -r ~/.config/nvim "$BACKUP_DIR/nvim"
cp -r ~/.config/hypr "$BACKUP_DIR/hypr"
cp -r ~/.config/qutebrowser "$BACKUP_DIR/qutebrowser"
cp -r ~/.zshrc "$BACKUP_DIR/"
cp -r ~/.bashrc "$BACKUP_DIR/"

echo "Backup complete! Files copied to: $BACKUP_DIR"
