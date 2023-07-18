#!/bin/bash

# Check if the arguments are specified
if [ $# -ne 2 ]; then
    echo "Usage: $0 writefile writestr"
    exit 1
fi

# Assign the arguments to variables
writefile=$1
writestr=$2

# Create the directory path if it does not exist
mkdir -p "$(dirname "$writefile")"

# Create or overwrite the file with the writestr
echo "$writestr" > "$writefile"

# Check if the file was created successfully
if [ $? -ne 0 ]; then
    echo "Could not create $writefile"
    exit 1
fi
