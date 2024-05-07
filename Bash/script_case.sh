#!/bin/bash

function saludar () {
    echo Hola $1
}

case "$1" in
    start|finish)
        echo "Ejecutaste Start o Finish"
        ;;
    res*)
        echo "Ejecutaste restart"
        ;;
    *)
        echo "Especificaste un argumento invalido"
        ;;
esac

