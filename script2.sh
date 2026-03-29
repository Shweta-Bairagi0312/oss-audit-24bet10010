#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Shweta

PACKAGE="python3"

# Check if package is installed
if dpkg -l | grep -q $PACKAGE; then
    echo "================================="
    echo "$PACKAGE is installed ✅"
    
    # Show version
    python3 --version
else
    echo "$PACKAGE is NOT installed ❌"
fi

echo "---------------------------------"

# Case statement for description
case $PACKAGE in
    python3)
        echo "Python: A powerful open-source programming language driven by community."
        ;;
    git)
        echo "Git: Version control system created to manage code efficiently."
        ;;
    vlc)
        echo "VLC: Open-source media player that can play almost all formats."
        ;;
    firefox)
        echo "Firefox: Open-source browser focused on privacy and openness."
        ;;
    *)
        echo "Unknown package"
        ;;
esac
