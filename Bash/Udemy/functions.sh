#! /bin/bash

mydate(){
	echo "today is: "
	date
	echo "have a GREAT day !"
}

hello2(){
	echo "hello $1 "
	echo " hello also to $2"
}

echo "start here"

mydate
echo "-------------"
echo $#
hello2 "Sergio" "blablabla"
echo $#

echo "move on.."