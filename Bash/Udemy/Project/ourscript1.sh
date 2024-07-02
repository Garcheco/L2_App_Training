#! /bin/bash

mkdir ./hot-folder

for myfile in * ; 
do
	if [ -f "$myfile" ]; then
		#echo "$myfile"
        #grep -ni "if" "$myfile"
		check=$(grep -ni "if" "$myfile")
		if [ -z "$check" ]; then
			echo "EMPTY"
		else
			echo "HOT FILE! FOUND !"
            cp "$myfile" ./hot-folder
            echo " " >> hot-folder/"$myfile"
            echo "********" >> hot-folder/"$myfile"
            echo "$check" >> hot-folder/"$myfile"
		fi
	else
		echo "this is a directory: $myfile"
	fi
		echo "----------------------------"
done

