#!/bin/bash

# Question 8
# Script to count files with a specific extension in a directory.

# Check if the number of arguments is less than 2
if [ $# -lt 2 ]; then
    echo "Usage: $0 <directory> <extension>"
    exit 1
fi

# Get the directory and extension
directory=$1
extension=$2

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "The directory $directory does not exist."
    exit 1
fi

# Count the number of files with the specified extension
count=$(ls -1 $directory/*.$extension 2>/dev/null | wc -l)

echo "There are $count files with the extension .$extension in the directory $directory/"
