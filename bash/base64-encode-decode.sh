#!/usr/bin/bash

echo "Select an option ?"
echo "Option 1: encode base64"
echo "Option 2: decode base64"

read option

case $option in
1)
   read -p "Enter username " username
   read -sp "Enter password" password
   
   echo
   
   creds=$(echo -n "$username:$password" | base64)
   echo "Your base64 encoded string is : $creds";;
2)
    read -p "Enter string to decode " string
    creds=$(echo -n  "$string"| base64  --decode)
    echo "$creds" | awk -F':' '{print "username: "$1, "\npassword: " $2}';;
*)
    echo "not a valid option";;
esac

