# Papelera-Linux
Papelera de archivos borrados en Linux, Fácil

Scripts para borrar y recuperar archivos, modo fácil.

Para ello debes de tener creada la carpeta llamada "Basura" donde encontrarás todos los archivos borrados con el script en cuestion.

mkdir Basura

Script del archivo a borrar, dentro de la carpeta documentos. y le asignamos permisos de ejecución con:
chmod +x borra.sh

#!/bin/bash
echo "Ingresa el nombre del archivo a borrar"
function rml()
{
read a
mv $a /home/cesart/Basura/
}
rml

Script del archivo a recuperar, dentro de la misma carpeta del script de basura creamos este script y le asignamos permisos de ejecucion
chmod +x recupera.sh 

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

Por último hacemos pruebas.

Nota: Esto solo funcionara en los directorios en los que se encuentren los archivos.
Aunque se planea implementar mediante un script que al dar rm o algún derivado copie el archivo directamente a la papelera y esté luego pueda recuperarse, actualmente no se ha hecho.
