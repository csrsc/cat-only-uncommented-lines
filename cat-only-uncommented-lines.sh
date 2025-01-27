#!/bin/bash

# Function to display uncommented lines
cat_uncommented() {
    local file="$1"

    if [ ! -f "$file" ]; then
        echo "Error: File '$file' not found."
        return 1
    fi

    # Using grep to filter out commented lines
    # This assumes that comments start with # and ignores whitespace before #
    grep -v '^\s*#' "$file" | grep -v '^\s*$'
}

# Check if a filename was provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Call the function with the provided filename
cat_uncommented "$1"