#! /bin/bash


echo "hello ..."

#if [ 3 -eq 3 ]; then
#	echo "Yes they are the same"
#fi
#
#echo "continue with our program"
#echo "bye"

#read -p "How old are you? " age 

#if [ $age -gt 100 ];then
#	echo "you are not very young"
#else
#	echo "you are still very young"
#fi


#read -p "Type a integer number beetween 1 and 4: " num
#
#if [ $num == "1" ];then
#	echo "typed 1"
#elif [[ $num == "2" ]]; then
#	echo "typed 2"
#elif [[ $num == "3" ]]; then
#	echo "typed 3"
#elif [[ $num == "4" ]]; then
#	echo "typed 4"
#else
#	echo "none of the above"
#fi
#



# ----------   LOGIC CONDITIONS -----------

#read -p "How old are you? " age
#
#if [ $age -lt 0 -o $age -gt 200 ];then		#. OR Operator
#	echo "Number Not Acceptable"
#	exit
#fi
#
#if [ $age -lt 64 -a $age -gt 26 ];then		#. AND Operator
#	echo "you are between 26 and 64"
#	exit
#fi
#echo "let us continue..."


# ---------  IF on Strings -------------

#if [ "abcd" == "abcd" ];then
#	echo "It's Equal!"
#fi
#echo "moving out"
#
#echo "--------------"
#if [ "abcd" != "aBcd" ];then
#	echo "It's Different!"
#fi
#echo "End"
#


# ---------- Example of how to use an IF ---------

#read -p "Type the password to know the file name: " pass
#if [ $pass == "Table1X" ];then
#	echo " Correct! the file name is: catfile.txt"
#else
#	echo "incorrect"
#	exit
#fi
#

#read -p "Type something: " str
#if [ -z $str ]; then  #<- This only evaluate ONLY one string. If we put "asjhas jkhaskajhs" counts as 2 so we gonna get an error. 
#	echo "this is an empty string"  # to avoid it we need to wrap the variable between double quotes -> "$str"
#	exit
#fi
#echo "moving out"


# -------------- IF on Files -----------------

# Condition to check if a file EXISTS

myfile=new.txt
if [ -e $myfile ]; then  	#	<-	Argument -e to  verify if something "EXISTS" 
	echo " $myfile  EXISTS"
fi


# NEGATE a Condition

if [ ! -e $myfile ]; then
	echo " $myfile Not EXISTS"
fi 


### Directory
if [ -d $myfile ]; then
	echo "$myfile is a Directory !"
	#open $myfile
else
	echo "$myfile is Not a Directory"
fi


### #File exists And is Readable  
if [ -r $myfile ]; then
	echo "$myfile is Readable !"
	#open $myfile
else
	echo "$myfile is Not Readable"
fi


### #File Exists and is Executable  
if [ -x $myfile ]; then
	echo "$myfile is Executable !"
	#open $myfile
else
	echo "$myfile is Not Executable"
fi

### #File Exists and it is NOT Empty
if [ -s $myfile ]; then
	echo "$myfile Not Empty !"
	#open $myfile
else
	echo "$myfile is Empty"
fi


echo "bye"