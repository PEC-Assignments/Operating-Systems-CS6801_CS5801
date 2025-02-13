#!/bin/bash

# Question 3
# Fibonacci series

# Check if the number of arguments is less than 1
if [ $# -lt 1 ]; then
    echo "Usage: $0 <n>"
    exit 1
fi

# Get the number of terms
n=$1

# Adding the first two numbers to the array
fibonacci=(0 1)

# loop to add the next numbers to the array
for ((i = 2; i < n; i++)); do
    # adding the next number to the array
    fibonacci[i]=$((fibonacci[i - 1] + fibonacci[i - 2]))
done

# Display the fibonacci series
echo "Fibonacci series upto $n terms:"
echo "${fibonacci[@]}"
