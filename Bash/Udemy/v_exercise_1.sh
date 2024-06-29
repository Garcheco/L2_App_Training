#! /bin/bash

##EXERCISE-1
# Create a script that checks if a number is divisible by either 2, 3 or 5.
# Create a function that does that.
# Hint: A number, say 18, is divisible by 3 if the reminder of the division 18/3 is 0, otherwise it is not divisible by 3. 
#       Review the lesson on "Arithmetic Expressions" and "  "IF Conditions" in case you have any doubts.

echo "start the program"

myfunction(){

read -p "Enter the divisible num: " num1

#if [ $(( num1 % 2 )) -o $(( num1 % 3 )) -o $(( num1 % 5)) -eq "0" ];then
if [ $(( num1 % 2 )) -eq "0" ];then
    echo "The number is divisible by either 2"
    elif [ $(( num1 % 3 )) -eq "0" ];then
        echo "The number is divisible by either 3" 
    elif [ $(( num1 % 5 )) -eq "0" ];then
        echo "The number is divisible by either 5"        
    else 
        echo "NONE of the above"
fi

}

myfunction

echo " "
echo "end the program"
