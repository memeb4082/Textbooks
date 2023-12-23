#!/bin/bash

# Get the content of the clipboard using pbpaste
clipboard_content=$(pbpaste)
username="$1"
password="$2"
# Set the ANSI escape code for green color
green='\033[0;32m'

# Reset the color back to default
reset='\033[0m'

# Iterate through each line in the clipboard content
while IFS= read -r line; do
    # Print the line with a break message in green
    wget --user="$username" --password="$password" "$line"
    # Add a newline for better readability
done <<< "$clipboard_content"
