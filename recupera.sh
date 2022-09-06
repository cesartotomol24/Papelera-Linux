#!/bin/bash
echo "Tus archivos borrados"
ls -l /home/cesart/Basura --color=auto
sleep 1
echo "Ingresa el nombre del archivo que quieres Recuperar"
read a
b=$(pwd)
mv /home/cesart/Basura/$a $b
sleep 1
echo "Recuperado"
