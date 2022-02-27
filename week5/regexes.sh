#!/bin/bash

#Author: Abu Sarder
#Date:25/02/2022
# Using grepp statements to bring out the folowing task

#Make sed color Purple to highlight in the out put

export  GREP_COLOR=35

#writing all the texts through built in f command to regexes.txt

find . -type f -exec cat {} + > regexes.txt 

 
# to show all sed statements

echo "show all sed statements"

grep --color -i sed regexes.txt

 #to show lines that start with 'm'

echo "show lines that start with 'm'"

grep --color -i "^m" regexes.txt

 

#Reference: https://askubuntu.com/questions/538730/how-to-grep-for-groups-of-n-digits-but-no-more-than-n

#to show all lines got three digit numbers

echo "shows all lines that contain three digit numbers"

grep --color -i -P '(?<!\d)\d{3}(?!\d)' regexes.txt

 
# Rference: https://stackoverflow.com/questions/33579606/is-it-possible-to-show-grep-output-of-3-words-of-the-search-keyword

echo "show all lines with echo statements with atleast three words"

grep -P 'echo .*\"[a-zA-Z]+\s.+[a-zA-Z]+\s.+[a-zA-Z]+\s.+"'  regexes.txt

 # shows all lines that would make good password.

# check each line from data.txt as a possible password

# run each line/possible password against various passwor strength

# criteria

# check user input against various password strength requirements

 
# varied from https://stackoverflow.com/questions/1559751/regex-to-make-sure-that-the-string-contains-at-least-one-lower-case-char-upper.

# read each line in the data file

# varied from https://www.tecmint.com/linux-grep-commands-character-classes-bracket-expressions/

while read secret_password; do

len="${#secret_password}"

 
# applying complexity checks per line

# considering calling as function or script

 
if test $len -ge 8 ; then

    echo "The line being checked for password complexity is= $secret_password"

    echo "$secret_password" | grep -q [0-9]

    if test $? -eq 0 ; then

    echo "$secret_password" | grep -q [A-Z]

    if test $? -eq 0 ; then

    echo "$secret_password" | grep -q [a-z]

    if test $? -eq 0 ; then

    echo "$secret_password" | grep -q [$,@,#,%]

    if test $? -eq 0 ; then

    echo "Thank you.  Password strength accepted."

        else

        echo "weak password include special chars"

        fi

        else

        echo "weak password include lower case char"

        fi

        else

        echo "weak password include capital char"

        fi

        else

        echo "please include the numbers in password it is weak password"

        fi
        
    else

    echo "password length should be greater than or equal 8 hence weak password"

fi

done < regexes.txt