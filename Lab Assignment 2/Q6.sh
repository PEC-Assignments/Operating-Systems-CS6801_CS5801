#!/bin/bash

# Question 6
# Program to find sum of seris S=1^2+2^2+3^2+...+n^2

echo Please Enter N:
read n

sum=0

for i in $(seq 1 $n); do
    sum=$((sum + i * i))
done

echo The sum of the series is: $sum
