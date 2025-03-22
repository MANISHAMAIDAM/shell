#!/bin/bash


## This program is usecase of reading dynamic variable values from cli 
echo "Please enter username::"
read -p USERNAME   #here USERNAME is variable

echo "Please enter password::"
read -s PASSWORD #s shelds the password from veiw

echo " Hello $USERNAME happy learning "