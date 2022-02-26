#!/bin/bash 
echo "Welcome to Bash Calculation"
echo
read -p 'Enter first numbers:' x
read -p 'Enter second numbers:' y 
echo
echo "Please type 1 for Addition:"
echo "Please type 2 for Subtruction:"
echo "Please type 3 for Multipliclation:"
echo "Please type 4 for Division:"
read chosenMuneOption
case ${chosenMuneOption} in
1)
a=`expr "scale=2; $x + $y" | bc`
echo -e "\033[0;34m" Adddition is = $a
;;
2)
s=`expr "scale=2; $x - $y" | bc`
echo -e "\033[0;32m" Subtruction is = $s
;;
3)
m=`expr "scale=2; $x * $y" | bc`
echo -e "\033[0;31m" Multiplication is = $m
;;
4)
d=`expr "scale=2; $x / $y" | bc`
echo -e "\033[0;35m" Division is = $d
;;
*) 
echo -e "\033[0;33m" "Wrong input good bye" 
;;
esac

#reference: "Shell script for arithmetic operators", https://www.youtube.com/watch?v=m_D-79qz_a0&t=364s
