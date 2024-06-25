#! /bin/bash

#echo "what is your name"
read -p "what is your name: " yourname

echo "hello $yourname, nice to meet you"

echo "tell me the path of the file you want to open"
read filepath

open $filepath
echo ------------------------*

#this is a comment for myself
#they do not affect in any way the programm
