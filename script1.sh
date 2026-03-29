#!/bin/bash
# Script 1: System Identity Report
# Author: Shweta
# Course: Open Source Software

# -------- Variables --------
STUDENT_NAME="Shweta"
SOFTWARE_CHOICE="Python"

# -------- System Info --------
KERNEL=$(uname -r)                # Kernel version
USER_NAME=$(whoami)               # Current user
UPTIME=$(uptime -p)               # System uptime
DATE=$(date)                      # Current date & time
DISTRO=$(lsb_release -d | cut -f2) # Linux distribution

# -------- Output --------
echo "======================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "======================================"
echo "Software : $SOFTWARE_CHOICE"
echo "Distro   : $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE"
echo "License  : GNU General Public License (GPL)"
echo "======================================"
