
read -p "Dime un numero " num1
read -p "Dime otro numero " num2

echo "**CALCULADORA BASICA**"
echo "MENU"
echo "1. suma"
echo "2. resta"
echo "3. multi"
echo "4. Division"

read -p "Opcion " opcion
respuesta=0

if [ $opcion -eq 1 ] 
then
    respuesta=$((num1+num2))
elif [ $opcion -eq 2 ]; then
    respuesta=$((num1-num2))
elif [ $opcion -eq 3 ]; then
    respuesta=$((num1*num2))
elif [ $opcion -eq 4 ]; then
    respuesta=$((num1/num2))
fi
echo "La respuesta es: $respuesta"