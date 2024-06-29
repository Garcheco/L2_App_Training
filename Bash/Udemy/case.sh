#! /bin/bash

echo "type a character"
read car
case $car in
	[0-9][0-9])  # In this way we ask for TWO numbers beetween 0-9 for each one, but only two, if we type only ONE this is not the case.
		echo "You typed a number greater than 9 and less than 100."
		;;
	[1-3] | [7-9])
		echo "You typed a number between 1-3 OR 7-9"
		;;
	[a-z]*)
		echo "You typed an character."
		;;
	[A-Z])
		echo "You choose  C"
		;;
	*) echo "NONE of above"
esac

