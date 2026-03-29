#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Sneha| Roll: 24BCE11188
# Course: Open Source Software
# Description: Asks 3 questions interactively and saves a personal OSS manifesto

# Alias concept (demonstrated as a comment — aliases are session-level in bash):
# alias greet='echo "Welcome to the Open Source world"'

echo "========================================"
echo "   Open Source Manifesto Generator"
echo "========================================"
echo ""

# --- Interactive input using read -p ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Generate metadata ---
DATE=$(date '+%d %B %Y')
AUTHOR=$(whoami)

# --- Output filename uses string concatenation with variable ---
OUTPUT="manifesto_${AUTHOR}.txt"

echo ""
echo "Generating your manifesto..."
echo ""

# --- Write to file: > creates, >> appends ---
echo "========================================"  > "$OUTPUT"
echo "       OPEN SOURCE MANIFESTO"            >> "$OUTPUT"
echo "========================================"  >> "$OUTPUT"
echo "Author : $AUTHOR"                         >> "$OUTPUT"
echo "Date   : $DATE"                           >> "$OUTPUT"
echo ""                                         >> "$OUTPUT"
echo "I believe in $FREEDOM."                   >> "$OUTPUT"
echo ""                                         >> "$OUTPUT"
echo "Every day I rely on $TOOL —"              >> "$OUTPUT"
echo "a tool built freely and shared without"   >> "$OUTPUT"
echo "restriction by people I will never meet." >> "$OUTPUT"
echo ""                                         >> "$OUTPUT"
echo "Standing on that foundation, I commit"    >> "$OUTPUT"
echo "to build $BUILD and release it freely"    >> "$OUTPUT"
echo "for anyone to use, study, modify,"        >> "$OUTPUT"
echo "and share. That is what it means"         >> "$OUTPUT"
echo "to work in the open."                     >> "$OUTPUT"
echo ""                                         >> "$OUTPUT"
echo "-- $AUTHOR | $DATE --"                    >> "$OUTPUT"
echo "========================================"  >> "$OUTPUT"

# --- Display the saved file ---
echo "Manifesto saved to: $OUTPUT"
echo ""
cat "$OUTPUT"
