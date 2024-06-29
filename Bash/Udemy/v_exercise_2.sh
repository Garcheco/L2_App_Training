#! /bin/bash

#EXERCISE-2
#Create a script that counts the number of ".txt" files inside your present working directory.

#Review the lesson on "For Loops"  , "IF Conditions"  and "Arithmetic Expressions" in case you have any doubts.

echo "Start the program"

# echo "The number of .txt files is: $(ls -l ./*.txt | wc -l) "      #  <- Also we can add any command inside of the () for example. 
echo "The number of .txt files is: $(ls -l ./*.txt | wc -l) "
cont=0
for i in ./*.txt
    do
    echo " File  $i  .  No: $((cont +1))"
    cont=$(( cont +1))
done
echo " "
echo "The number of files is: $cont"
