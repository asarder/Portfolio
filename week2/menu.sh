#!/bin/bash

echo     "** Welcome to Manue **"
echo # blank line
echo '1. create a folder'
echo '2. copy a folder'
echo '3. Change Password'
read -p "selet an opption: " number
echo #blankline
case $number in
    "1" )
        sh /home/student/scripts/portfolio/week2/folderCreator.sh ;;
    "2" )
        sh /home/student/scripts/foldercopier.sh ;; #copy from scripts folder in week2 folder
    "3" )
        ./setPassword.sh ;;
       *)
        echo "invailid input" ;;
esac

echo 'Password Changed'



#Reference: https://www.youtube.com/watch?v=dW3oYQbNFyI
