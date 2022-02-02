#!/bin/bash
read -p "create folder:" folder_name
mkdir $folder_name
read -sp "Enter Password:" Pass_var
echo
echo "Entered foldername: $folder_name"
echo "Entered password: $Pass_var"
echo $Pass_var | sha256sum >./$folder_name/secret.txt

exit 0
