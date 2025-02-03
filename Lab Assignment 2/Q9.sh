#!/bin/bash

# Question 9
# Program to perform various pattern search using file

#!/bin/bash

# Function to search for a pattern in the file
search_pattern() {
    pattern=$1
    filename=$2
    echo "Searching for pattern '$pattern' in $filename..."

    # Search for the pattern and display matching lines
    grep "$pattern" "$filename"
}

# Function to count the occurrences of a pattern
count_occurrences() {
    pattern=$1
    filename=$2
    echo "Counting occurrences of pattern '$pattern' in $filename..."

    # Count occurrences of the pattern
    grep -o "$pattern" "$filename" | wc -l
}

# Function to find lines with a pattern (case-insensitive)
find_case_insensitive() {
    pattern=$1
    filename=$2
    echo "Searching for pattern '$pattern' (case insensitive) in $filename..."

    # Case-insensitive search for the pattern
    grep -i "$pattern" "$filename"
}

echo "Enter the pattern to search:"
read pattern
echo "Enter the file name to search in:"
read filename

if [[ ! -f "$filename" ]]; then
    echo "File not found!"
    exit 1
fi

# Main menu for user to choose options
echo "Select an option:"
echo "1. Search for the pattern"
echo "2. Count occurrences of a pattern"
echo "3. Find the pattern case-insensitively"
echo "4. Exit"
read choice

case $choice in
1)
    search_pattern "$pattern" "$filename"
    ;;
2)
    count_occurrences "$pattern" "$filename"
    ;;
3)
    find_case_insensitive "$pattern" "$filename"
    ;;
4)
    echo "Exiting program."
    exit 0
    ;;
*)
    echo "Invalid option. Please try again."
    ;;
esac
