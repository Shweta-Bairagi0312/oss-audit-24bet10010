#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Shweta

echo "Answer the following questions:"
echo ""

# Take user input
read -p "1. Name one open-source tool you use daily: " TOOL
read -p "2. What does 'freedom' mean to you? " FREEDOM
read -p "3. What would you build and share freely? " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Create manifesto
echo "===================================" > $OUTPUT
echo " Open Source Manifesto - $DATE" >> $OUTPUT
echo "===================================" >> $OUTPUT
echo "" >> $OUTPUT
echo "I use $TOOL every day. To me, freedom means $FREEDOM." >> $OUTPUT
echo "In the future, I want to build $BUILD and share it openly with the world." >> $OUTPUT
echo "I believe in collaboration, transparency, and community-driven innovation." >> $OUTPUT

# Display output
echo ""
echo "Manifesto saved in file: $OUTPUT"
echo ""
cat $OUTPUT

