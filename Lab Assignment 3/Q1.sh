#!/bin/bash

# Question 1
# Script to check if a process is running and display it's PID.

# Check if the number of arguments is less than 1
if [ $# -lt 1 ]
then
    echo "Usage: $0 <process_name>"
    exit 1
fi

# Get the process name
process_name=$1

# Get the PID of the process
pid=$(pgrep -n $process_name)

# Check if the process is running
if [ -z "$pid" ]
then
    echo "The process $process_name is not running."
else
    echo "The process $process_name is running with PID $pid."
fi