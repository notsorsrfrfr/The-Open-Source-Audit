#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Sanidhya Raj
# Registration: 24BAI10494
# Course: Open Source Software
# Software Chosen: Blender

# -----------------------------------------------
# VARIABLES
# -----------------------------------------------

PACKAGE="blender"           # Package name to inspect

# -----------------------------------------------
# CHECK IF PACKAGE IS INSTALLED
# -----------------------------------------------

echo "=================================================="
echo "        FOSS PACKAGE INSPECTOR"
echo "=================================================="
echo ""

# if-then-else to check installation status
if dpkg -q $PACKAGE &>/dev/null; then
    echo "  ✔ $PACKAGE is INSTALLED on this system."
    echo ""

    # Display package details using pipe and grep
    echo "--------------------------------------------------"
    echo "  PACKAGE DETAILS"
    echo "--------------------------------------------------"
    dpkg -s $PACKAGE | grep -E 'Version|License|Maintainer|Homepage'
    echo ""

    # Display size information
    echo "--------------------------------------------------"
    echo "  SIZE INFORMATION"
    echo "--------------------------------------------------"
    dpkg -s $PACKAGE | grep -E 'Installed-Size'
    echo ""

else
    echo "  ✘ $PACKAGE is NOT installed."
    echo ""
    echo "  Install it using:"
    echo "  sudo apt install $PACKAGE"
    echo ""
fi

# -----------------------------------------------
# CASE STATEMENT — Philosophy Notes
# -----------------------------------------------

echo "--------------------------------------------------"
echo "  OPEN SOURCE PHILOSOPHY NOTE"
echo "--------------------------------------------------"
echo ""

# Case statement checks package name and prints
# a philosophy note about each software
case $PACKAGE in
    blender)
        echo "  Blender: Proof that a community can"
        echo "  buy back its own freedom."
        echo "  Raised 100,000 euros in 7 weeks"
        echo "  to release source code under GPL."
        ;;
    httpd|apache2)
        echo "  Apache: The web server that built"
        echo "  the open internet."
        ;;
    mysql)
        echo "  MySQL: Open source at the heart"
        echo "  of millions of applications."
        ;;
    python3)
        echo "  Python: A language shaped entirely"
        echo "  by its community since 1991."
        ;;
    git)
        echo "  Git: Built by Linus Torvalds when"
        echo "  proprietary tools failed him."
        ;;
    firefox)
        echo "  Firefox: A nonprofit fighting"
        echo "  for an open web."
        ;;
    vlc)
        echo "  VLC: Built by students in Paris"
        echo "  to stream video freely."
        ;;
    *)
        echo "  $PACKAGE: An open source tool"
        echo "  built on freedom and sharing."
        ;;
esac

echo ""
echo "=================================================="
echo "  Inspection Complete"
echo "=================================================="
