#!/bin/bash

# Question 7
# Script to read numbers from a file, sort them in ascending order and save them to a new file.

# Check if the number of arguments is less than 1
if [ $# -lt 1 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

# Get the file
file=$1

# Check if the file exists
if [ ! -f $file ]; then
    echo "The file $file does not exist."
    exit 1
fi

new_file="${file%.*}_sorted.${file##*.}"

sort -n "$file" >"$new_file"

echo "The numbers in the file $file have been sorted in ascending order and saved to $new_file."
