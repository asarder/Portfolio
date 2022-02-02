#!/bin/bash
read -p "create folder:" folder_var
mkdir $folder_var
read -sp "Enter Password:" Pass_var
echo
echo "Entered foldername: $folder_var"
hash="secret.txt"
echo "Entered password: $Pass_var"
hash=$(echo $Pass_var | sha256sum)
myvariable= cat "$hash"
exit 0
