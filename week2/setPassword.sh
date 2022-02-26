#!/bin/bash
#Author: Abu Sarder
#Date 28/01/2022i
#A user can type a secrete password

read -p "type folder name: " # asking user to type folder name
read -sp "Enter Password: " pass_var 
echo #to make this line blank
echo $pass_var | sha256sum >./secret.txt
secretPassword=secret.txt
Checkpassword=$(cat "$secretPassword")
exit 0

