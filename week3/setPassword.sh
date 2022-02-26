#!/bin/bash
#Author: Abu Sarder
#Date 28/01/2022i
#A user can type a secrete password


read -sp "Enter new password: " pass_var 
echo #to make this line blank
echo $pass_var | sha256sum >./secret.txt
echo 'Password changed'
#secretpassword=secrt.txt
#echo secretpassword | sha256sum

exit 0

