#!/bin/bash
# Script 4: Log File Analyzer
# Author: [Your Name]
# Registration: [Your Reg Number]
# Course: Open Source Software
# Software Chosen: Blender

# -----------------------------------------------
# COMMAND LINE ARGUMENTS
# -----------------------------------------------

LOGFILE=$1                  # First argument = log file path
KEYWORD=${2:-"error"}       # Second argument = keyword
                            # Default keyword is "error"

# -----------------------------------------------
# VARIABLES
# -----------------------------------------------

COUNT=0                     # Counter for matching lines
MATCH_LINES=""              # Store matching lines

# -----------------------------------------------
# HEADER
# -----------------------------------------------

echo "=================================================="
echo "           LOG FILE ANALYZER"
echo "=================================================="
echo ""

# -----------------------------------------------
# ERROR HANDLING — Check if file exists
# -----------------------------------------------

# Check if user provided a file argument
if [ -z "$LOGFILE" ]; then
    echo "  ✘ Error: No log file provided."
    echo ""
    echo "  Usage: ./script4_log_analyzer.sh <logfile> <keyword>"
    echo "  Example: ./script4_log_analyzer.sh /var/log/syslog error"
    echo ""
    exit 1
fi

# Check if file actually exists
if [ ! -f "$LOGFILE" ]; then
    echo "  ✘ Error: File '$LOGFILE' not found."
    echo ""
    echo "  Available log files:"
    ls /var/log/*.log 2>/dev/null
    echo ""
    exit 1
fi

# Check if file is empty
if [ ! -s "$LOGFILE" ]; then
    echo "  ✘ Warning: File '$LOGFILE' is empty."
    exit 1
fi

# -----------------------------------------------
# FILE INFO
# -----------------------------------------------

echo "  Log File : $LOGFILE"
echo "  Keyword  : $KEYWORD"
echo "  Date     : $(date '+%d %B %Y %H:%M:%S')"
echo ""
echo "--------------------------------------------------"

# -----------------------------------------------
# WHILE LOOP — Read file line by line
# -----------------------------------------------

echo "  Scanning file..."
echo ""

while IFS= read -r LINE; do

    # if statement checks each line for keyword
    # -i flag makes grep case insensitive
    if echo "$LINE" | grep -iq "$KEYWORD"; then

        # Increment counter
        COUNT=$((COUNT + 1))

        # Store matching line
        MATCH_LINES="$MATCH_LINES\n$LINE"

    fi

done < "$LOGFILE"

# -----------------------------------------------
# RESULTS SECTION
# -----------------------------------------------

echo "--------------------------------------------------"
echo "  SCAN RESULTS"
echo "--------------------------------------------------"
echo ""
echo "  Keyword '$KEYWORD' found : $COUNT times"
echo ""

# Show results based on count
if [ $COUNT -eq 0 ]; then
    echo "  No matches found for '$KEYWORD'"

elif [ $COUNT -lt 5 ]; then
    echo "  All matching lines:"
    echo ""
    echo -e "$MATCH_LINES"

else
    # Show last 5 matching lines using grep and tail
    echo "  Last 5 matching lines:"
    echo ""
    grep -i "$KEYWORD" "$LOGFILE" | tail -5

fi

echo ""
echo "=================================================="
echo "  Analysis Complete"
echo "=================================================="
