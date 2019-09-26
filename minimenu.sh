#!/bin/bash

# declaracion de variables globales
uid=""
dc=""
dc2=""
ou=""


#bucle principal
while :
do
	clear
	echo "Pulsa 1 para meter el  uid"
	echo "Pulsa 2 para meter el  dc"
	echo "Pulsa 3 para meter el  la extension"
	echo "Pulsa 4 para meter el  ou"
	echo "De momento tengo esto"
	echo "dn: uid="$uid",ou="$ou",dc="$dc",dc="$extension
	printf '\n'
	echo "Pulsa 0 para salir"
	read -p "Elige un número " eleccion
case $eleccion in
	1)
		echo "has elegido meter el uid"
		read -p "introduce el pid " uid
		echo 1 ;;
	2)
		echo "has elegido meter el ou"
		read -p "introduce el ou " ou
		echo 2 ;;
	3)
		echo "has elegido meter el dc"
		read -p "introduce el dc " dc
		echo 3 ;;
	4)
		echo "has elegido meter el uid"
		read -p "introduce la extension " dc2
		echo 4;;
	0)
		echo "EXISTE EL .TXT?"
		sleep 2
		exit 0
		echo 0;;
	*)
		echo "opcion no valida"
esac
done
