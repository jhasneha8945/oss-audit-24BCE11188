#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Sneha| Roll: 24BCE11188
# Course: Open Source Software
# Description: Loops through system directories and reports permissions + disk usage

# --- Array of important system directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================"
echo "       Directory Audit Report"
echo "========================================"

# --- For loop: iterate over each directory in the array ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # awk extracts: permission string, owner, group (fields 1, 3, 4)
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # du reports disk usage; cut extracts just the size value
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR"
        echo "  Permissions : $PERMS"
        echo "  Size        : $SIZE"
        echo "----------------------------------------"
    else
        echo "$DIR — does not exist on this system"
        echo "----------------------------------------"
    fi
done

# --- Bonus: Check Git configuration file ---
echo ""
echo "--- Git Configuration Check ---"
if [ -f "$HOME/.gitconfig" ]; then
    echo "Global Git config found:"
    ls -l "$HOME/.gitconfig" | awk '{print "  Permissions:", $1, "| Owner:", $3}'
    echo "  Contents preview:"
    cat "$HOME/.gitconfig"
else
    echo "No ~/.gitconfig found yet."
    echo "Run: git config --global user.name 'Your Name'"
    echo "Run: git config --global user.email 'your@email.com'"
fi
