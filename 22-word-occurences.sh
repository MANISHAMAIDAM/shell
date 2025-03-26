#!/bin/bash

# Check if the correct number of arguments is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <file_name>"
    exit 1
fi

# Assign the argument to a variable
file_name=$1

# Check if the file exists
if [ ! -f "$file_name" ]; then
    echo "Error: File '$file_name' not found"
    exit 1
fi

# Convert all text to lowercase, remove punctuation, and count word occurrences
cat "$file_name" | tr -s '[:space:]' '\n' | tr -d '[:punct:]' | awk '{word[$1]++} END {for (w in word) print w, word[w]}' | sort -k2,2nr -k1,1