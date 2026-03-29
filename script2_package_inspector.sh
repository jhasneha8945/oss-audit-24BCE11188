#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Sneha| Roll: 24BCE11188
# Course: Open Source Software
# Description: Checks if Git is installed and prints package info + philosophy note

# --- Package to inspect ---
PACKAGE="git"

# --- Check installation: try RPM first, then DEB ---
echo "Checking if '$PACKAGE' is installed..."
echo "----------------------------------------"

if command -v rpm &>/dev/null && rpm -q $PACKAGE &>/dev/null; then
    # RPM-based system (Fedora, RHEL, CentOS)
    echo "$PACKAGE is installed (RPM-based system)"
    rpm -qi $PACKAGE | grep -E 'Version|License|Summary'

elif command -v dpkg &>/dev/null && dpkg -l $PACKAGE 2>/dev/null | grep -q '^ii'; then
    # DEB-based system (Ubuntu, Debian)
    echo "$PACKAGE is installed (DEB-based system)"
    dpkg -l $PACKAGE | grep '^ii'

elif command -v git &>/dev/null; then
    # Git Bash / Windows fallback
    echo "$PACKAGE is installed"
    echo "Version : $(git --version)"
    echo "License : GPL v2"
    echo "Summary : Fast, distributed version control system"

else
    echo "$PACKAGE is NOT installed."
    echo "Install it with: sudo apt install git"
fi

echo ""
echo "--- Philosophy Note ---"

# --- Case statement: prints a one-line philosophy note per package ---
case $PACKAGE in
    git)     echo "Git: born in two weeks to free Linux from proprietary version control." ;;
    httpd)   echo "Apache: the web server that built the open internet." ;;
    mysql)   echo "MySQL: open source at the heart of millions of web applications." ;;
    firefox) echo "Firefox: a nonprofit's fight for an open and independent web." ;;
    vlc)     echo "VLC: built by students who just wanted to stream video freely." ;;
    *)       echo "$PACKAGE: another essential block in the open-source foundation." ;;
esac
