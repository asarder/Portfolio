#!/bin/bash
#Author: Abu Sarder
#Date: 27/02/2022
#Instrucked from week6.5

#hidden password hash

passwordHash="cd40b8dee6fa4d3ebd321a4f316cd54cfbd57c9a4bc357af842367de8a334371";

#for each line in the file

for word in $(cat wordlist.txt); do

    #hash the word

    wordlistHash=$(echo -n $word | sha256sum | awk '{ print $1; }')

    echo "Trying $word: $wordlistHash"

    #if the hash is the same as the correct password's hash then we have cracked the password!

    if [ $wordlistHash = $passwordHash ]; then

        echo "Password has been cracked! It was $word"

        exit 0

    fi

done

exit 1

#Reference: Week6.5