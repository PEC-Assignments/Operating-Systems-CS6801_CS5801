#!/bin/bash

# Question 9
# Script to display system information such as OS version, kernel version, and system uptime.

# Display the OS version
os_version=$(lsb_release -d | cut -f2)
echo "OS Version: $os_version"

# Display the kernel version
kernel_version=$(uname -r)
echo "Kernel Version: $kernel_version"

# Display the system uptime
uptime=$(uptime -p)
echo "System Uptime: $uptime"
