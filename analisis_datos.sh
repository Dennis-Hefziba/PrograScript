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