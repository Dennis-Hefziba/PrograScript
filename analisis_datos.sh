#!/bin/bash
suma=0
notaAlta=0
notaMasBaja=10
promedio=0
while IFS=$'\t' read -r codigo nombre municipio departamento nota
do
    
    suma=$((suma + nota))   
    if [ $nota -gt $notaAlta ]; then
        notaAlta=$nota
        fi

    if [ $nota -lt $notaMasBaja ]; then
        notaMasBaja=$nota
        fi

done < <(tail -n +2 notas.csv)
promedio=$((suma / 8))

echo "la nota mas alta es: $notaAlta"
echo "la nota mas baja es: $notaMasBaja"
echo "el promedio es: $promedio"