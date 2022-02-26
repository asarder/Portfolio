#!/bin/bash
#Author: Abu Sarder
#Date: 21/02/2022

#This function print to input the right numbers
printError()

{

echo -e "\033[31mERROR;\033[0m $1"

}

#This function will get vulue of input numbers

getNumber()
{
read -p "$1: "
while (( $REPLY< $2 || $REPLY> $3  )); do
    
    printError "Input numbers between $2 and $3"

        read -p "$1: "
	
done
}

echo " This is a Guessing Game scripts"
getNumber "Please type a number between 1 and 100" 1 100

guess_num=42
input_num=$REPLY

# assign guess number 42

if [ $guess_num -eq $input_num  ] 
then
    echo "the number is correct"
    elif [ $guess_num -ge $input_num ]
then
    echo "The number is too low"
else 
    echo "The number is too high"
fi 

 
