#!/bin/bash
# DESCRIPTION sirve para comparar dos parametros
# AUTH israel
if [ $1 -gt $2 ]
	then
	echo "es mayor que " $2
	else
	echo "es menor que " $2
fi
exit 0
