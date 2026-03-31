#!/bin/bash

# Script 3: Disk and Permission Auditor
# Author: Your Name

# --- Directories to check ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=========================================="
echo "        Directory Audit Report"
echo "=========================================="
echo ""

# --- Loop through directories ---
for DIR in "${DIRS[@]}"; do

    if [ -d "$DIR" ]; then

        # Get permissions, owner, group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')

        # Get disk usage size
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "Directory : $DIR"
        echo "Permissions/Owner : $PERMS"
        echo "Size : $SIZE"
        echo "------------------------------------------"

    else
        echo "$DIR does not exist on this system"
        echo "------------------------------------------"
    fi

done

# --- Optional: Check config directory of a software ---
CONFIG_DIR="$HOME/.config"

echo ""
echo "----- Config Directory Check -----"

if [ -d "$CONFIG_DIR" ]; then
    CONFIG_PERMS=$(ls -ld "$CONFIG_DIR" | awk '{print $1, $3, $4}')
    echo "Config Directory : $CONFIG_DIR"
    echo "Permissions/Owner : $CONFIG_PERMS"
else
    echo "Config directory not found."
fi

echo ""
echo "========== End of Report =========="

