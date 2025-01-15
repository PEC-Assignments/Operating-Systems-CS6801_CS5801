#!/bin/bash

# cat Command - used to display contents of a file(sample.txt)
echo "cat Command - displayed contents of sample.txt"
cat sample.txt

# chmod - used to change the permissions of a file(sample.txt)
echo "chmod Command - changed sample.txt file to readonly"
chmod a=r sample.txt
echo

# cd - used to change the directory
echo "cd Command - changed directory to sample dir"
cd sample\ dir/
pwd
echo

# cp - used to copy files
echo "cp Command - copied sample.txt to sample dir"
cd ..
cp sample.txt sample\ dir/
ls sample\ dir/
echo

# date - used to display the current date and time
echo "date Command"
date
echo

# echo - used to display a line of text
echo "echo Command"
echo "Hello World"
echo

# ftp - used to transfer files between a client and a server
echo "ftp Command"
ftp -n <<EOF
open test.rebex.net
user demo password
ls
bye
EOF
echo

# grep - used to search for a specific text in a file
echo "grep Command - searched for 'Hello' in sample.txt"
grep "Hello" sample.txt
echo

# head - used to display the first few lines of a file
echo "head Command - displayed first few lines of sample.txt"
head sample.txt
echo

# ls - used to list the files in a directory
echo "ls Command - listed files in sample dir"
ls sample\ dir/
echo

# lpr - used to print files
echo "lpr Command - printed sample.txt"
lpr sample.txt
echo

# more - used to display the contents of a file one screen at a time
echo "more Command - displayed contents of sample.txt one screen at a time"
more sample.txt
echo

# mkdir - used to create a new directory
echo "mkdir Command - created a new directory 'new_dir'"
mkdir new_dir
ls
echo

# mv - used to move files
touch a.txt
echo "mv Command - moved a.txt to new_dir"
mv a.txt new_dir/
ls new_dir/
echo

# ncftp - used to transfer files between a client and a server
echo "ncftp Command"
ncftp -u demo -p password test.rebex.net <<EOF
cd pub
quit
EOF
echo

# print skipped because it is not available in newer versions of linux

# pwd - used to display the current working directory
echo "pwd Command"
pwd
echo

# rm - used to remove files
echo "rm Command - removed a.txt"
rm new_dir/a.txt
ls new_dir/
echo

# rmdir - used to remove directories
echo "rmdir Command - removed new_dir"
rmdir new_dir
ls
echo

# rsh skipped because it is not available in newer versions of linux

# setenv - export is used instead of setenv in newer versions of linux

# export - used to set environment variables
echo "export Command - set environment variable 'TEST' to 'Hello'"
export TEST=Hello
echo $TEST
echo

# sort - used to sort the contents of a file
echo "sort Command - sorted sample.txt"
sort sample.txt
echo

# tail - used to display the last few lines of a file
echo "tail Command - displayed last few lines of sample.txt"
tail sample.txt
echo

# tar - used to create, maintain, modify, and extract files from archives
echo "tar Command - created a tar file of sample.txt"
tar -cvf sample.tar sample.txt
ls
echo

# telnet - used to communicate with another host using the TELNET protocol
echo "telnet Command"
telnet telehack.com <<EOF
quit
EOF
echo

# wc - used to count the number of lines, words, and characters in a file
echo "wc Command - counted lines, words, and characters in sample.txt"
wc sample.txt
echo
