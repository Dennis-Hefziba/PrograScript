#!/bin/bash
#contar el numero de palabras que contiene el archivo texto
archivo=$1
buscar=$2
reemplazar=$3
#si el archivo no existe
if [ ! -e "$archivo" ]; then
    echo "Este archivo no existe"
    exit 1
fi
#buscaruna palabra en un archivo y reemplazarla por otra
sed -i "s/$buscar/$reemplazar/g" $archivo