#!/bin/bash

# Question 5
# Print the sequence of odd numbers upto N

echo "Please enter N:"
read n

arr=()
for i in $(seq 1 2 $n); do
    arr+=($i)
done

echo "The sequence of odd numbers upto $n is: ${arr[@]}"
