#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Shweta

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================"
echo " Directory Audit Report"
echo "======================================"

for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]; then
        
        # Get permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        
        # Get directory size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    
    else
        echo "$DIR does not exist"
    fi
done

echo "======================================"

# Check Python config directory (example)
CONFIG_DIR="/etc/python3"

if [ -d "$CONFIG_DIR" ]; then
    echo "Python config directory exists: $CONFIG_DIR"
    ls -ld $CONFIG_DIR
else
    echo "Python config directory not found"
fi
