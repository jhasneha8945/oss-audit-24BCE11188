#!/bin/bash
# Script 4: Log File Analyzer
# Author: Sneha | Roll: 24BCE11188
# Course: Open Source Software
# Description: Reads a log file, counts keyword occurrences, shows last 5 matches
# Usage: ./script4_log_analyzer.sh /path/to/logfile [keyword]

# --- Command-line arguments ---
LOGFILE=$1                   # First argument: path to the log file
KEYWORD=${2:-"error"}        # Second argument: keyword to search (default: error)
COUNT=0                      # Counter variable, starts at zero

# --- Validate: check the user provided a file path ---
if [ -z "$LOGFILE" ]; then
    echo "Usage: ./script4_log_analyzer.sh <logfile> [keyword]"
    echo "Example: ./script4_log_analyzer.sh /var/log/syslog error"
    exit 1
fi

# --- Validate: check the file actually exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found."
    exit 1
fi

# --- Retry loop if file exists but is empty ---
ATTEMPTS=0
while [ ! -s "$LOGFILE" ] && [ $ATTEMPTS -lt 3 ]; do
    echo "Log file is empty. Waiting 5 seconds... (attempt $ATTEMPTS)"
    sleep 5
    ATTEMPTS=$((ATTEMPTS + 1))
done

echo "Analyzing: $LOGFILE"
echo "Keyword  : '$KEYWORD'"
echo "----------------------------------------"

# --- While read loop: go through file line by line ---
while IFS= read -r LINE; do
    # if-then: check if this line contains the keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))   # increment counter
    fi
done < "$LOGFILE"

# --- Print summary ---
echo "Total matches found : $COUNT"
echo ""
echo "Last 5 matching lines:"
echo "----------------------------------------"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
