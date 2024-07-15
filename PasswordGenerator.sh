#!/bin/bash

# anything after the "shabang" will be used as interpreter
# bash is a terminal instance, shell is the interpreter of commands

#Simple Password Generator

echo "This is a simple password generator"
echo "Please enter the length of the password: "
read PASS_LENGTH

echo "How many passwords would you like to generate"
read SEQ_LENGTH

for p in $(seq 1 $SEQ_LENGTH):
do
        openssl rand -base64 48 | cut -c1-$PASS_LENGTH
        # We are using all 48 characters avilable in openssl to genreate a random base64 string
        # after that we are piping the output to a cut to get a string of user specified length
done
