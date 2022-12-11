#!/usr/bin/env bash


# content of file rm-users.txt
# 1. joe
# 2. hai
# 3. foo
# 4. bar

cat rm-users.txt | while read user
do
        echo "Removing: ${user}"
        userdel -r "${user}"
done