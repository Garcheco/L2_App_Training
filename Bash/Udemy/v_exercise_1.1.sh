#! /bin/bash

##EXERCISE-1
# Create a script that checks if a number is divisible by either 2, 3 or 5.
# Create a function that does that.
# Hint: A number, say 18, is divisible by 3 if the reminder of the division 18/3 is 0, otherwise it is not divisible by 3. 
#       Review the lesson on "Arithmetic Expressions" and "  "IF Conditions" in case you have any doubts.

echo "start the program"

myfunction(){

read -p "Enter the divisible num: " num1

for i in {2,3,5}
do

    if [ $(( $num1%$i )) -eq 0 ]; then
        echo "your number $num is divisible by $i"
    fi
done
}

myfunction

echo " "
echo "end the program"
