#!/bin/bash

# Question 6
# Script that monitors file for changes and displays a message when the file is updated.

# Check if the number of arguments is less than 1
if [ $# -lt 1 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

# Get the file
file=$1

# Check if the file exists
if [ ! -f $file ]; then
    echo "File $file does not exist."
    exit 1
fi

# Get the initial timestamp of the file
timestamp=$(stat -c %Y $file)

echo "Monitoring file $file for changes..."

# Monitor the file for changes
while true; do
    new_timestamp=$(stat -c %Y $file)

    if [ $new_timestamp -gt $timestamp ]; then
        echo "File $file has been updated."
        timestamp=$new_timestamp
    fi

    sleep 1
done
