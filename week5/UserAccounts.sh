#!/bin/bash
#Abu Sarder
#Date : 26/02/2022

#formated out put from /etc/passwd

echo " Formated out put from /etc/passwd"

cat /etc/passwd >input2.txt #writing /etc/passwd data to input.txt

# writing awk for out put formated data from \etc\passwd

awk '
BEGIN {

    FS=":";
    
    print "_________________________________________________________________________________________________";

    print "| \033[34mUser Name:-     \033[0m | \033[34mUser ID\033[0m | \033[34mGroup ID\033[0m | \033[34mHome Directory:-               \033[0m | \033[34mShell              \033[0m |";

    print "_________________________________________________________________________________________________";
}
{
    printf("| \033[33m%-16s\033[0m | \033[35m%-7s\033[0m | \033[36m%-8s\033[0m | \033[37m%-31s\033[0m | \033[38m%-19s\033[0m |\n", $1, $3, $4, $6, $7);

}

END{

    print("_________________________________________________________________________________________________");

}' input2.txt

#Reference: Week5.4 task from Black Board 