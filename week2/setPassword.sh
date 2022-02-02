#!/bin/bash
read -p "type foldername:" folder_var
read -sp "Enter Password:" Pass_var
echo
echo "Entered foldername: $folder_var"
echo "Entered password: $Pass_var"
hash_var=$(echo $Pass_var | sha256sum)
hashfile="secret.txt"
myvariable=$(cat "$hashfile")
