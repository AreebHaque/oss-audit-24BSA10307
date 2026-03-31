#!/bin/bash

# Script 5: Open Source Manifesto Generator
# Author: Your Name

# Alias example (concept demonstration)
# alias ll='ls -la'

echo "=========================================="
echo " Open Source Manifesto Generator"
echo "=========================================="
echo ""

# --- User Input ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Date and filename ---
DATE=$(date "+%d %B %Y")
USER=$(whoami)
OUTPUT="manifesto_$USER.txt"

# --- Generate Manifesto ---
echo "------------------------------------------" > $OUTPUT
echo "        Open Source Manifesto" >> $OUTPUT
echo "------------------------------------------" >> $OUTPUT
echo "Author : $USER" >> $OUTPUT
echo "Date   : $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I use $TOOL almost every day, and it really helps me get things done and learn new things." >> $OUTPUT
echo "For me, freedom means $FREEDOM — having the ability to use and explore technology the way I want." >> $OUTPUT
echo "I would love to build and share $BUILD so others can use it, improve it, and learn from it." >> $OUTPUT

echo "" >> $OUTPUT
echo "Open source is all about sharing and helping each other grow." >> $OUTPUT

# --- Output result ---
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
