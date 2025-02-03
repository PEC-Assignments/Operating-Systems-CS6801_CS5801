#!/bin/bash

# Question 3
# Program to sum and average of N numbers

echo "Please enter the number of elements:"
read n

echo "Please enter the numbers (space seperated):"
read -a arr

sum=0
for num in "${arr[@]}"; do
    sum=$((sum + num))
done

average=$(echo "scale=2; $sum/$n" | bc)

echo "The sum of the numbers is:$sum"
echo "The average of the numbers is: $average"
