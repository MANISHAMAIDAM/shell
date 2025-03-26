#!/bin/bash

# Check if the correct number of arguments is provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <file_name> <word>"
    exit 1
fi

# Assign arguments to variables
file_name=$1
word=$2

# Check if the file exists
if [ ! -f "$file_name" ]; then
    echo "Error: File '$file_name' not found"
    exit 1
fi

# Count the occurrences of the word (case insensitive)
count=$(grep -i -o "\b$word\b" "$file_name" | wc -l)

# Output the result
echo "The word '$word' occurs $count times in the file '$file_name'"