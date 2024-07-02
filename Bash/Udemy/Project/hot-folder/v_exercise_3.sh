#! /bin/bash

#EXERCISE-3
#In this exercise after creating some .txt and .jpg files, 
#we will let the user choose either the .jpg or the .txt files, 
#and rename all these files.

#-Create any number of different .txt files and .jpg files.
#-Let the user choose either the .jpg or the .txt files and
#keep asking until the user press either "j" or "t".

#-Let the user choose a Prefix to add to the name of all the selected files
#(all the .jpg or all the .txt files).
#-Rename all the selected files adding this prefix to their name. 

#Review the lesson on "While Loops"  and "Logic Conditions" in Section 4 and "Variables" in Section 2  in case you have any doubts.

for i in {1..6}; do
    touch "${i}.txt"
done

for i in {1..6}; do
    touch "f${i}.jpg"
done

echo "Creating files..."
sleep 0.6
ls -l
echo ""

##################

choice=""
while [ "$choice" != "t" -a "$choice" != "j" ];
do 
    echo "To rename a .jpg file press j,  to rename a .txt file press t: "
    read choice
    echo "You typed $choice"
done

read -p "Write prefix to add to these files " pref
echo "the prefix is $pref "

if [ "$choice" == "t" ];then
    for element in *.txt
    do 
        mv ${element} ${pref}${element}
    done
else
    for element in *.jpg
    do
        mv ${element} ${pref}${element}
    done
fi

sleep 0.6
ls -l
echo "Ending program"
 
********
8:#-Create any number of different .txt files and .jpg files.
44:if [ "$choice" == "t" ];then
