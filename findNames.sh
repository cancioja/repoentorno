clear
echo
echo "-----------------------------------------------------------"
echo "EJERCICIO  3"
echo "-----------------------------------------------------------"
echo "Identificación de nombres propios (Formato Nnnnnnnnn)"
echo "-----------------------------------------------------------"
echo

grep -Eo '[A-Z][[:alpha:]]+' Textoprueba.txt|sort -u 

echo
