#!/bin/bash
#Author: Abu Sarder
#Date: 05/02/2022
#conditional decession making by checking password

read -sp "Enter Password: " pass_var
echo
hash_var=$(echo "$pass_var" | sha256sum)
hashdoc=secret.txt
checkpassword=$(cat "$hashdoc")
#"1: $hash_var" #user input password
#"2: $checkpassword" #compare user password

if [ "$hash_var" == "$checkpassword" ]
then echo "Access Granted."
        echo # to make blank line
   sh menu.sh #Ref:https://www.youtube.com/watch?v=hs-FK681D50
   exit 0
else
echo "Access Denied."
echo "Good Bye"
exit 1
fi

