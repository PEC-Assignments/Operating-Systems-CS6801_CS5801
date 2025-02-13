#!/bin/bash

# Question 10
# Script to display multiplication table of a number.

# Check if the number of arguments is less than 1
if [ $# -lt 1 ]; then
    echo "Usage: $0 <number>"
    exit 1
fi

# Get the number
number=$1

echo "Multiplication Table of $number:"
# Display the multiplication table of the number
for i in {1..10}; do
    result=$((number * i))
    echo "$number x $i = $result"
done
