#! /bin/bash

echo "número de parámetros = $#"
# si número de parámetros menor o igual que 0
if [ $# -le 0 ]; then
  echo "Hay que introducir al menos un parámetro."
  exit 1
fi
echo "Hola $@!"

men=Hola
i=1

while [ -n "$1" ]; do
    if [ $i -eq 1 ]; then
        men="men $1"
        i=0
    else
        men="$men, $1"
    fi

    #con el shift se pasa al siguiente parametro
    shift
done

echo $men"!"

