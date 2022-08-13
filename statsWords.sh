#!/bin/bash     #VER SI ES NECESARIO AL LLAMAR EL SCRIPT
clear
echo "----------------------------------------------------------"
echo "EJERCICIO  1"
echo "Indicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud)"
echo "----------------------------------------------------------"

grep -Eio '[[:alpha:]]+' Textoprueba.txt|sort|uniq -i  > palabras.txt   # < LOS NUMEROS EN EL TEXTO NO SE CONSIDERAN WORDS >

#--------------------------------------------------------------
# OTRA MANERA DE FILTRAR LAS PALABRAS DEL TEXTO
#cat Textoprueba.txt|tr -cs "'[:alpha:]áéíóú" "\n"| sort | uniq -i > palabras.txt
#--------------------------------------------------------------
cat palabras.txt    # SACAR EN DEFINITIVO

declare -a array_palabras  # se declara array_palabras como una variable de tipo array
i=0     # inicializo el contador
maxlen=0

while read linea      # read "lee" desde el archivo "palabras.txt"
do
array_palabras[$i]=${#linea}
if [ ${#linea} -gt $maxlen ]; then maxlen=${#linea}; fi
((i++))

done < palabras.txt

minlen=${array_palabras[0]}

longitud=0
declare -i totallong=0
declare -i promedio=0

for longitud in "${array_palabras[@]}"
do

if [ $longitud -lt $minlen ]
   then echo \n "En bucle $longitud"  #SACAR
        minlen=$longitud
        echo "Min len en bucle $minlen" #SACAR
fi        

totallong+=$longitud
done

promedio=$totallong/${#array_palabras[@]};

echo -e "\nLongitud palabra más larga : $maxlen caracteres"
echo -e "\nLongitud palabra más corta: $minlen caracteres "
echo -e "\nCantidad de palabras:  ${#array_palabras[@]}"
echo -e "\nSuma longitudes palabras:  $totallong caracteres"
echo -e "\nPromedio longitud palabras: $promedio caracteres"
echo 


