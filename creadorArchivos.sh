#!/bin/bash
# AUTOR Israel de Lamo
# DEFINITION lee un par de variables locales y crea una frase larga en un fichero

# declaracion de variables globales
var_uid=""
var_ou=""
var_dc1=""
var_dcsufijo=""


#pido los datos al usuario
read -p "dime el nombre del uid " var_uid
read -p "dime la unidad organizativa " var_ou
read -p "dime el nombre del dominio sin extension " var_dc1
read -p "dime la extensión del dominio " var_dcsufijo


#salida por pantalla
echo dn: uid=$var_uid,ou=$var_ou,dc=$var_dc1,dc=$var_dcsufijo

#salida al fichero mediante creacción de un nuevo
echo dn: uid=$var_uid,ou=$var_ou,dc=$var_dc1,dc=$var_dcsufijo >> salida.ldif


exit 0 # salida sin errores
