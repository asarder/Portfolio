#!/bin/bash
#Author: Abu SArder
#Date: 15/02/2022
# Creating Megamenu which contain folders and files
echo " MEGA MENU"
echo #blankline
echo '1. Create a folder'
echo '2. copy a folder'
echo '3. Change password'
echo '4. Calculator'
echo '5. Create week folder'
echo '6. Check filenames'
echo '7. Download a file'
echo '8. Exit'
read -rp "Selet an opption: " number
echo #blankline
case $number in
    "1" )
        sh /home/student/scripts/portfolio/week2/megafoldermaker.sh ;;
    "2" )
        sh /home/student/scripts/foldercopier.sh ;; #copy from scripts folder in week2 folder
    "3" )
        ./setPassword.sh ;;
    "4" )
        ./bashCalculator.sh ;;
    "5" )
        /home/student/scripts/portfolio/megafoldermaker.sh ;;
    "6" )
        \* ;;
    "7" )
        ./filedownloader.sh ;;
    "8" )
        exit ;;
       *)
        echo "invailid input" ;;
esac



