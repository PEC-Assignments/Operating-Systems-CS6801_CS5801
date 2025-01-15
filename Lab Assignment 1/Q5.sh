#!/bin/bash

# Program to calculate the sum of digits

echo "Enter a number: "
read num

sum=0

while [ $num -gt 0 ]; do
    digit=$((num % 10))
    sum=$((sum + digit))
    num=$((num / 10))
done

echo "The sum of digits is: $sum"
