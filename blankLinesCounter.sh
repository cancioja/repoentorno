clear
echo "---------------------------------------------------"
echo "        Contador de líneas en blanco)"
echo "---------------------------------------------------"
echo "                  EJERCICIO  5"
echo "---------------------------------------------------"

# ^$ es una expresión regular que sólo coincide con una línea en blanco (un inicio de línea seguido de un final de línea)

echo "La Cantidad de líneas en blanco en el texto es: $(cat Textoprueba.txt|grep "^$"|wc -l)"
echo
