#!/bin/bash

# Question 5
# Check given string or number is palindrome or not

# Check if the number of arguments is less than 1
if [ $# -lt 1 ]; then
    echo "Usage: $0 <string/number>"
    exit 1
fi

# Get the string or number
input=$1

# Reverse the input
reverse=$(echo $input | rev)

# Check if the input is a palindrome
if [ "$input" == "$reverse" ]; then
    echo "$input is a palindrome."
else
    echo "$input is not a palindrome."
fi
