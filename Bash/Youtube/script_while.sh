#!/bin/bash

function saludar () {
	echo Hola $1
}

X=3

while [[ $X -ge 1 ]]; do
	echo "El valor de X es $X"
	X=$((X-1))
done
