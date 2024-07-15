#! /bin/bash

#You will have to modify the access rights of the .sh file to run it as executable

#Good Practises

#Initializing the variables
    #Varibale names are preffered to be in UPPER CASE
        # Name = "Sanjit"  (wrong)
    #There is to be no gap in intialization of the variables
        # NAME="Sanjit"

NAME="Sanjit"

#Using the variable

    # use $ sign to access initalized variable
echo "Hi! My name is "$NAME

    # concatinatin g variables with other strings or variables

SPORT="FootBall"

echo "Hi! I am  ${NAME}, I love to play ${SPORT}"