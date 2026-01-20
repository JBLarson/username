#!/bin/bash


# username.sh
# JB Larson
# CPSC-298 - intro to unix


echo "Username Rules:"
echo "- Only lowercase letters, digits, and underscore"
echo "- Must start with lowercase letter"
echo "- Must be 3-12 characters"
echo

while true
do
    echo "Enter a username: "
    read -r username
    
    if [[ "$username" =~ ^[a-z][a-z0-9_]{2,11}$ ]]
    then
        echo "Thank you!"
        break
    else
        echo "Invalid username. Please try again."
        echo
    fi
done
