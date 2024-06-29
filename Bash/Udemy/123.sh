#! /bin/bash

list=$(ls -l ./*.txt | wc -l)
echo "The number of .txt files is: $list " 
