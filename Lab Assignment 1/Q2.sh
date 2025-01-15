#!/bin/bash

# Program to check if a number is even or odd

echo "Enter a number: "
read num

if [ $((num % 2)) -eq 0 ]; then
    echo "$num is an even number"
else
    echo "$num is an odd number"
fi
