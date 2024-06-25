#! /bin/bash

num1=10
num2=20

echo " SUM $(( num1 + num2 )) "
echo " PRODUCT $(( num1 * num2 ))"
echo " DIVISION $(( num2 / num1 ))"
echo " REMINDER : $(( 10 % 3 ))"

echo " POWER: $(( 3**2 ))"

echo "-----------------"
echo "INCREASE A VARIABLE"
#num1=$(( $num1 +1 ))
echo "variable is $(( num1++ ))"
echo "variable now is $num1"
echo " "
echo " "


echo "INCREASE OF 1 A VARIABLE BEFORE PRINTING"
echo "variable= $num1"
echo "$(( ++num1 ))"
echo "variable now is $num1"
echo " "
echo " "


echo "DECREASE A VARIABLE"
#num1=$(( $num1 -1 ))
echo "variable is $(( num1-- ))"
echo "variable now is $num1"
echo " "
echo " "


echo "------------------------"
echo "SHORT WAY OF OPERATING ON A VARIABLE"

num1=10
num1=$((num1 + 3))
echo "value= $num1"
echo " "

echo "another way to do it:"
echo "ADD:  $(( num1+=3 ))"
echo "variable + 3= "
echo " "

echo "SUBSTRACT: $(( num1-= 10 ))"
echo "variable -10 = $num1"
echo " "

echo "MULTIPLY: $(( num1 *=10 ))"
echo "variable *10 = $num1"