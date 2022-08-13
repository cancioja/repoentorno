clear
echo "---------------------------------------------------------- "
echo "                    EJERCICIO  4"
echo "---------------------------------------------------------- "
echo
echo "   Indicador estadístico de longitud de oraciones" 
echo "(la más corta,la más larga y el promedio de longitud)"
echo "---------------------------------------------------------- "
echo

grep -E '[a-z]' Textoprueba.txt|tr -d "\n"|tr -t "\." "\n" > oraciones.txt


declare -a array_lineas  # declaro array_lineas como una variable de tipo array
i=0  # inicializo el contador
maxlen=0
minlen=0

while read linea  # read "lee" las lìneas desde el archivo "oraciones.xtx"
do
array_lineas[$i]=${#linea}
if [ ${#linea} -gt $maxlen ]; then maxlen=${#linea}; fi
((i++))

done < oraciones.txt

minlen=${array_lineas[0]}
longitud=0
declare -i totallong=0
declare -i promedio=0

for longitud in "${array_lineas[@]}"
do

if [ $longitud -lt $minlen ]; then minlen=$longitud; fi
totallong=$totallong+$longitud; 

done

promedio=$totallong/${#array_lineas[@]};

echo -e "\nLongitud oración más larga : $maxlen "
echo -e "\nLongitud oración más corta: $minlen "
echo -e "\nCantidad de oraciones  ${#array_lineas[@]}"
echo -e "\nSuma longitudes oraciones:  $totallong"
echo -e "\nPromedio longitud oraciones: $promedio "
echo
