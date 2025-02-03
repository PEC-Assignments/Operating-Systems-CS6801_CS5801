# Question 4
# Find Factorial of given number

echo Enter the number:
read n

factorial=1
for ((i = n; i > 1; i--)); do
    factorial=$((factorial * i))
done

echo The factorial of $n is: $factorial
