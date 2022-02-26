#!/bin/bash
#!/bin/bash
#Author: Abu SArder
#Date: 17/02/2022
# Download file 

read -p "Input the download URL or exit to quit: " url

if [ "$url" == "exit" ];then
break;
fi

read -p "Input the directory where you wish to save: " directory

filename=$(eval echo $directory)

echo $filename

wget -P $filename $url
