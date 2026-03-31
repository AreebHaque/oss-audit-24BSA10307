#!/bin/bash

# Script 1: System Identity Report
# Author: Your Name
# Course: Open Source Software

STUDENT_NAME="Areeb Haque"
SOFTWARE_CHOICE="Linux Kernal"

DISTRO=$(cat /etc/os-release | grep "^PRETTY_NAME" | cut -d= -f2 | tr -d '"')
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date)

echo "=========================================="
echo "   Welcome to Your Linux System Report"
echo "=========================================="
echo ""
echo "Student Name : $STUDENT_NAME"
echo "Script       : $SOFTWARE_CHOICE"
echo ""
echo "----- System Information -----"
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date & Time  : $CURRENT_DATE"
echo ""
echo "----- License Information -----"
echo "This system is based on open-source software,"
echo "primarily licensed under the GNU General Public License (GPL)."
echo ""
echo "=========================================="
echo "        End of Report"
echo "=========================================="
