#!/bin/bash
OUTPUT="/tmp/input.txt"

dialog --title "el nombre del admin" \
	--backtitle "Parseador CSV" \
	--inputbox "Indica el nombre" 8 60 2>$OUTPUT

response=$?

name=$(<$OUTPUT)
echo $name
