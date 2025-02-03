#!/bin/bash

# Question 12
# Program to check whether a login is connected or not

# Function to check if a user is connected
check_user_connected() {
    user=$1
    echo "Checking if user $user is connected..."

    # Check if the user is connected
    who | grep -q "^$user " && echo "$user is connected." || echo "$user is not connected."
}

echo "Enter the username to check:"
read username

check_user_connected "$username"
