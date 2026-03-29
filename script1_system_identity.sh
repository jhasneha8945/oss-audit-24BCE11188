#!/bin/bash
# Script 1: System Identity Report
# Author: Sneha| Roll: 24BCE11188
# Course: Open Source Software
# Description: Displays Linux system info and OS license details

# --- Variables ---
STUDENT_NAME="Sneha"
ROLL_NUMBER="24BCE11188"
SOFTWARE_CHOICE="Git"

# --- Gather system information using command substitution ---
KERNEL=$(uname -r)
DISTRO=$(grep PRETTY_NAME /etc/os-release 2>/dev/null | cut -d= -f2 | tr -d '"')
USER_NAME=$(whoami)
HOME_DIR=$(eval echo ~$USER_NAME)
UPTIME=$(uptime -p)
DATETIME=$(date '+%d %B %Y  %H:%M:%S')

# --- Display formatted output ---
echo "========================================"
echo "   Open Source Audit --- $STUDENT_NAME"
echo "   Roll Number      : $ROLL_NUMBER"
echo "   Software Choice  : $SOFTWARE_CHOICE"
echo "========================================"
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date & Time  : $DATETIME"
echo "OS License   : GNU General Public License v2 (GPL v2)"
echo "========================================"
