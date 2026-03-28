#!/bin/bash
# Script 3: Disk and Permission Auditor

# -----------------------------------------------
# VARIABLES
# -----------------------------------------------

# List of important system directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "/usr/share")

# Blender specific config directory
BLENDER_CONFIG="$HOME/.config/blender"

# -----------------------------------------------
# HEADER
# -----------------------------------------------

echo "=================================================="
echo "        DISK AND PERMISSION AUDITOR"
echo "=================================================="
echo ""
echo "  Auditing system directories..."
echo ""
echo "--------------------------------------------------"
printf "  %-20s %-15s %-20s\n" "Directory" "Size" "Permissions/Owner"
echo "--------------------------------------------------"

# -----------------------------------------------
# FOR LOOP — Check each directory
# -----------------------------------------------

for DIR in "${DIRS[@]}"; do

    # Check if directory exists
    if [ -d "$DIR" ]; then

        # Get permissions and owner using awk
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')

        # Get size using du command
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        # Print formatted output
        printf "  %-20s %-15s %-20s\n" "$DIR" "$SIZE" "$PERMS"

    else
        # Directory does not exist on system
        printf "  %-20s %-15s\n" "$DIR" "NOT FOUND"
    fi

done

echo ""
echo "--------------------------------------------------"

# -----------------------------------------------
# BLENDER CONFIG DIRECTORY CHECK
# -----------------------------------------------

echo ""
echo "  BLENDER CONFIG DIRECTORY CHECK"
echo "--------------------------------------------------"
echo ""

# Check if blender config directory exists
if [ -d "$BLENDER_CONFIG" ]; then
    echo "  ✔ Blender config directory found!"
    echo ""

    # Show its permissions
    echo "  Location : $BLENDER_CONFIG"
    BPERMS=$(ls -ld $BLENDER_CONFIG | awk '{print $1}')
    BOWNER=$(ls -ld $BLENDER_CONFIG | awk '{print $3}')
    echo "  Permissions : $BPERMS"
    echo "  Owner       : $BOWNER"

    # Show contents
    echo ""
    echo "  Contents:"
    ls $BLENDER_CONFIG

else
    echo "  ✘ Blender config directory not found."
    echo "  Launch Blender once to create it."
fi

echo ""
echo "=================================================="
echo "  Audit Complete"
echo "=================================================="
