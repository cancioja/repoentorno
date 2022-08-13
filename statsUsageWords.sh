clear
echo "---------------------------------------------------------------" 
echo "EJERCICIO  2"
echo "---------------------------------------------------------------"
echo "Indicador estadístico de uso de palabras de al menos 4 letras"
echo "---------------------------------------------------------------"
echo

grep -Eo '[[:alpha:]]{4,}' Textoprueba.txt |sort|uniq -ci|sort -nr|head

echo
