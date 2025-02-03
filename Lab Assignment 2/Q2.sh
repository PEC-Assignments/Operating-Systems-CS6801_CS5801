#!/bin/bash

# Question 2
# To Find the largest and the smallest of 3 numbers

echo "Please enter the three numbers (space seperated)":
read num1 num2 num3

smallest=$num1
largest=$num1

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]; then
    largest=$num1
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]; then
    largest=$num2
else
    largest=$num3
fi

if [ $num1 -lt $num2 ] && [ $num1 -lt $num3 ]; then
    smallest=$num1
elif [ $num2 -lt $num1 ] && [ $num2 -lt $num3 ]; then
    smallest=$num2
else
    smallest=$num3
fi

echo "The largest number is:$largest"
echo "The smallest number is:$smallest"
