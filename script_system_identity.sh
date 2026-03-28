#!/bin/bash
# Script 1: System Identity Report
# Author: [Your Name]
# Registration: [Your Reg Number]
# Course: Open Source Software
# Software Chosen: Blender

# ----------------------------------------------- VARIABLES SECTION 
# -----------------------------------------------

STUDENT_NAME="[Your Name]"          # Your full name
REG_NUMBER="[Your Reg Number]"      # Your registration number
SOFTWARE_CHOICE="Blender"           # Chosen open source software
LICENSE="GNU General Public License v2 or later (GPL v2+)"

# -----------------------------------------------
# SYSTEM INFORMATION (using command substitution)
# -----------------------------------------------

KERNEL=$(uname -r)                  # Gets kernel version
DISTRO=$(lsb_release -d | cut -f2)  # Gets distro name
USER_NAME=$(whoami)                  # Gets current username
HOME_DIR=$(echo $HOME)              # Gets home directory path
UPTIME=$(uptime -p)                 # Gets system uptime
DATE=$(date '+%d %B %Y')            # Gets current date
TIME=$(date '+%H:%M:%S')            # Gets current time

# -----------------------------------------------
# DISPLAY SECTION
# -----------------------------------------------

echo "=================================================="
echo "       OPEN SOURCE AUDIT — SYSTEM REPORT"
echo "=================================================="
echo ""
echo "  Student  : $STUDENT_NAME"
echo "  Reg No   : $REG_NUMBER"
echo "  Software : $SOFTWARE_CHOICE"
echo ""
echo "--------------------------------------------------"
echo "  SYSTEM INFORMATION"
echo "--------------------------------------------------"
echo ""
echo "  Distribution : $DISTRO"
echo "  Kernel       : $KERNEL"
echo "  User         : $USER_NAME"
echo "  Home Dir     : $HOME_DIR"
echo "  Uptime       : $UPTIME"
echo "  Date         : $DATE"
echo "  Time         : $TIME"
echo ""
echo "--------------------------------------------------"
echo "  LICENSE INFORMATION"
echo "--------------------------------------------------"
echo ""
echo "  $SOFTWARE_CHOICE is licensed under:"
echo "  $LICENSE"
echo ""
echo "  This means you are free to:"
echo "  - Run Blender for any purpose"
echo "  - Study and modify the source code"
echo "  - Distribute copies freely"
echo "  - Share your modifications"
echo ""
echo "=================================================="
echo "  Open Source Software — VIT"
echo "=================================================="
