#!/bin/bash
#contar el numero de palabras que contiene el archivo texto
archivo=$1
#si el archivo no existe
if [ ! -e "$archivo" ]; then
    echo "Este archivo no existe"
    exit 1
fi
#si el archio existe
wc -w $archivo