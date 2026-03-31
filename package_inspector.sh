#!/bin/bash

# Script 2: FOSS Package Inspector
# Author: Your Name

# --- Input ---
echo "Enter package name (e.g., firefox, vlc, git): "
read PACKAGE

# --- Check if package is installed ---
if dpkg -l | grep -qw "$PACKAGE"; then
    echo "-----------------------------------"
    echo "$PACKAGE is installed."
    echo "-----------------------------------"

    # Show clean package info
    dpkg -s "$PACKAGE" | grep -E "Status|Version"

else
    echo "-----------------------------------"
    echo "$PACKAGE is NOT installed."
    echo "-----------------------------------"
fi

# --- Package Description ---
echo ""
echo "----- Package Description -----"

case $PACKAGE in
    firefox)
        echo "Firefox: A popular open-source web browser."
        ;;
    vlc)
        echo "VLC: A free multimedia player supporting many formats."
        ;;
    git)
        echo "Git: A distributed version control system for tracking code changes."
        ;;
    mysql)
        echo "MySQL: An open-source database management system."
        ;;
    apache2)
        echo "Apache: A widely-used open-source web server."
        ;;
    *)
        echo "No description available for this package."
        ;;
esac
