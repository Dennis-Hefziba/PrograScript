#!/bin/bash

while IFS=$'\t' read -r codigo nombre municipio departamento nota
do
    echo "Nombre: $nombre"
    echo "Nota: $nota"
done < <(tail -n +2 notas.csv)