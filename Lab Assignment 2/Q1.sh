#!/bin/bash

# Question 1
# Program to check if a number is positive or negative

echo "Please Enter a number:"
read num

if [ $num -gt -1 ]; then
    echo "The number is Positive"
else
    echo "The number is Negative"
fi
