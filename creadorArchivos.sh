#!/bin/bash
# AUTOR Israel de Lamo
# DEFINITION lee un par de variables locales y crea una frase larga en un fichero

# declaracion de variables globales
var_uid=piloto1
var_ou=pilotos
var_dc1=korriban
var_dcsufijo=sith

#salida por pantalla
echo dn: uid=$var_uid,ou=$var_ou,dc=$var_dc1,dc=$var_dcsufijo

#salida al fichero mediante creacción de un nuevo
echo dn: uid=$var_uid,ou=$var_ou,dc=$var_dc1,dc=$var_dcsufijo >> salida.ldif


exit 0 # salida sin errores
