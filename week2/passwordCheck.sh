#!/bin/bash
#Author: Abu Sarder
#conditional decession making by checking password

read -sp "Enter Password: " pass_var

#assigning variable for hash
hash_var=$(echo "$pass_var" | sha256sum)
hashdoc=./folder1/secret1.txt
checkpassword=$(cat "$hashdoc")
echo "1: $hash_var" #user input password
echo "2: $checkpassword" #compare user password

#making argument for check password
if [ "hash_var" == "$checkpassword" ]
then echo "Access Granted" 
exit 0
else
echo "Access Denied"
exit 1
fi