#!/bin/bash

archivo=$1
EmailAbuscar=$2

#si el archivo no existe
if [ ! -e "$archivo" ]; then
    echo "Este archivo no existe"
    exit 1
fi

#buscar un email en el archivo
#grep $EmailAbuscar $archivo

#buscar todos los correos 
grep -oP '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b' $archivo

#buscar dui
#de los nums de 0 a 9 solo 8 digitos, de los nums de 0 a 9 1 digito (Patron de los duis)

grep -oP '\b[0-9]{8}-[0-9]{1}\b' $archivo