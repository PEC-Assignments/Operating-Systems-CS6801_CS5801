#!/bin/bash

# Question 7
# Program to perform the arithmetic operation using switch case

echo "Please enter the first number:"
read num1

echo "Please enter the second number:"
read num2

echo "Please enter the operation to be performed (+, -, *, /):"
read operation

case $operation in
    "+")
        result=$((num1 + num2))
        echo "The sum of $num1 and $num2 is: $result"
        ;;
    "-")
        result=$((num1 - num2))
        echo "The difference of $num1 and $num2 is: $result"
        ;;
    "*")
        result=$((num1 * num2))
        echo "The product of $num1 and $num2 is: $result"
        ;;
    "/")
        result=$(echo "scale=2; $num1/$num2" | bc)
        echo "The division of $num1 and $num2 is: $result"
        ;;
    *)
        echo "Invalid operation"
        ;;
esac
