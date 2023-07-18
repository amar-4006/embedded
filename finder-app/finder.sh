#!/bin/bash

# Check if the arguments are specified
if [ $# -ne 2 ]; then
    echo "Usage: $0 filesdir searchstr"
    exit 1
fi

# Assign the arguments to variables
filesdir=$1
searchstr=$2

# Check if the filesdir is a valid directory
if [ ! -d "$filesdir" ]; then
    echo "$filesdir is not a directory"
    exit 1
fi

# Count the number of files in the directory and subdirectories
filecount=$(find "$filesdir" -type f | wc -l)

# Count the number of matching lines in the files
linecount=$(grep -r "$searchstr" "$filesdir" | wc -l)

# Print the message
echo "The number of files are $filecount and the number of matching lines are $linecount"