#!/bin/bash

# Question 4
# Script to search and replace a string in a file.

# Check if the number of arguments is less than 3
if [ $# -lt 3 ]; then
    echo "Usage: $0 <search_string> <replace_string> <file>"
    exit 1
fi

# Get the search string, replace string and file
search_string=$1
replace_string=$2
file=$3

# Search and replace the string in the file
sed -i "s/$search_string/$replace_string/g" $file

echo "The string '$search_string' has been replaced with '$replace_string' in the file '$file'."
