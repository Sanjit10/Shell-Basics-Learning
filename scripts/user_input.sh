#! /bin/bash

# -p stansnfor prompt to be shown before user input 
read -p "Enter your name: " NAME
echo "Your name is ${NAME}"

# multi word input
echo "Please enter your full name: "
read FIRST_NAME LAST_NAME

echo "Your name is ${FIRST_NAME} ${LAST_NAME}"