#!/bin/bash

# Check if directory is provided as an argument
if [[ -z "$1" ]]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Assign directory path from argument
DIR=$1

# Check if the directory exists
if [[ ! -d "$DIR" ]]; then
    echo "Error: Directory '$DIR' does not exist!"
    exit 1
fi

# Find top 10 largest files in the given directory
echo "🔍 Searching for the top 10 largest files in '$DIR'..."
find "$DIR" -type f -exec du -ah {} + 2>/dev/null | sort -rh | head -n 10

