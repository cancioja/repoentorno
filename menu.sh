#!/bin/bash

#Script Principal desde el cual se llamará a través de un menú a los distintos scripts para análisis de texto

opcion1="Indicador estadístico longitud de palabras"
opcion2="Indicador estadístico uso de palabras"
opcion3="Identificador de nombres propios"
opcion4="Indicador estadístico de longitud de oraciones"
opcion5="Contador de líneas en blanco"
opcion6="Salir"

while :
do
clear
echo "-----------------------------------------"
echo "MENU APLICACIONES PARA ANALISIS DE TEXTO"
echo "-----------------------------------------"
echo
PS3='Ingrese su opción: '
opciones=("$opcion1" "$opcion2" "$opcion3" "$opcion4" "$opcion5" "$opcion6")
select op in "${opciones[@]}"
do
    case $op in
        "$opcion1")
            source statsWords.sh
            echo -n "Oprima Enter para seguir: " 
            read tecla
            break
            ;;
        "$opcion2")
            source statsUsageWords.sh
            echo -n "Oprima Enter para seguir: " 
            read tecla
            break
            ;;
        "$opcion3")
            source findNames.sh
            echo -n "Oprima Enter para seguir: " 
            read tecla
            break
            ;;
        "$opcion4")
            source statsSentences.sh
            echo -n "Oprima Enter para seguir: " 
            read tecla
            break
            ;;
        "$opcion5")
            source blankLinesCounter.sh
            echo -n "Oprima Enter para seguir: " 
            read tecla
            break
            ;;
        "$opcion6")
            clear
            exit 0
            ;;
        *)  echo "Opción inválida elegida"
            echo "Ingrese un Nro. entre 1-6"
            echo -n "Oprima Enter para seguir: " 
            read tecla
            break
            ;;
    esac
done
done


