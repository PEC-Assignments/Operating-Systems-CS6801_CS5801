#!/bin/bash

# Question 10
# Perform sum of series using switch case

#!/bin/bash

# Function to calculate the sum of an arithmetic progression
arithmetic_progression() {
    echo "Enter the first term (a):"
    read a
    echo "Enter the common difference (d):"
    read d
    echo "Enter the number of terms (n):"
    read n

    sum=$((n / 2 * (2 * a + (n - 1) * d)))
    echo "Sum of the arithmetic series: $sum"
}

# Function to calculate the sum of a geometric progression
geometric_progression() {
    echo "Enter the first term (a):"
    read a
    echo "Enter the common ratio (r):"
    read r
    echo "Enter the number of terms (n):"
    read n

    if [ "$r" -eq 1 ]; then
        echo "Common ratio cannot be 1 for geometric series."
        exit 1
    fi

    sum=$(echo "$a * ((1 - $r^$n) / (1 - $r))" | bc -l)
    echo "Sum of the geometric series: $sum"
}

# Function to calculate the sum of the first n natural numbers
sum_natural_numbers() {
    echo "Enter the number of terms (n):"
    read n
    sum=$((n * (n + 1) / 2))
    echo "Sum of the first $n natural numbers: $sum"
}

# Main menu
echo "Select the type of series:"
echo "1. Arithmetic Progression"
echo "2. Geometric Progression"
echo "3. Sum of First N Natural Numbers"
echo "4. Exit"
read choice

case $choice in
1)
    arithmetic_progression
    ;;
2)
    geometric_progression
    ;;
3)
    sum_natural_numbers
    ;;
4)
    echo "Exiting program."
    exit 0
    ;;
*)
    echo "Invalid option. Please try again."
    ;;
esac
