#!/bin/bash

# declaracion de variables globales
uid=""
dc=""
dc2=""
ou=""

#funcion dibujamenu para poder poner todas las opciones
dibujamenu(){
	clear
	echo "Pulsa 1 para meter el  uid"
	echo "Pulsa 2 para meter el  dc"
	echo "Pulsa 3 para meter el  la extension"
	echo "Pulsa 4 para meter el  ou"
	echo "De momento tengo esto"
	echo "dn: uid="$uid",ou="$ou",dc="$dc",dc="$extension
	printf '\n'
	echo "Pulsa 0 para salir"
}


existeFichero(){
	echo "Comprobando si existe el fichero"
	sleep 1
	if [ -e salida.txt ]
		then
			echo "El fichero existe"
		else
			echo "El fichero no existe"
	fi
	echo "Pulsa cualquier tecla para salir sin guardar"
	read -p "Pulsa S para machacar el fichero anterior" opcionLeidaMachacar
	if [ opcionLeidaMachacar = "S" ]
		then
			echo "Toda una frase" >> salida.txt
		else
			echo "No escribo nada"
	fi
}



#bucle principal
while :
do

	dibujamenu
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
		existeFichero
		exit 0;;
	*)
		echo "opcion no valida";;
esac
done
