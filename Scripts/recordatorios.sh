#!/bin/bash

clear
echo "=================================================="
echo "1.-Crear nuevo recordatorio"
echo "2.-Añadir un recordatorio a la lista"
echo "3.-Eliminar un recordatorio de la lista"
echo "4.-Ejecutar Lista"
echo "5.-Eliminar Lista"
echo "=================================================="

read -p "Ingrese el numero de la opcion: " opcion
case $opcion in

1)

#Solicitar al usuario el titulo y el contenido del recordatorio
read -p "Ingrese el titulo del recordatorio: " title
echo "Ingrese el contenido del recordatorio: "
read content

#Generar el comando termux-notification con la entrada del usuario
termux-notification -t "$title" \
                    -c "$content" \
                    --group "$title" \
                    --id "$title" \
                    --ongoing \
                    --priority max \
                    --button1 "Eliminar Recordatorio" \
                    --button1-action "termux-notification-remove '$title'"

;;

2)
#Lista de recordatorios
#Ingresar titulo
read -p "Ingrese el titlo del recordatorio: " title

#Ingresar contenido
echo "Ingrese el contenido del recordatorio: "
read content

echo "termux-notification -t '$title' -c '$content' --group '$title' --id '$title' --ongoing --priority max --button1 'Eliminar Recordatorio' --button1-action 'termux-notification-remove '$title''" >> ~/Scripts/cosasquehacer.sh
chmod +x ~/Scripts/cosasquehacer.sh

;;

3)
if cat ~/Scripts/cosasquehacer.sh | grep -q "Cancelar"; then
linea=$(cat -n ~/Scripts/cosasquehacer.sh | fzf --reverse -e -i --prompt="¿Qué recordatorio quieres eliminar?: " | awk '{print $1}') && sed -i "${linea}d" ~/Scripts/cosasquehacer.sh
else
echo "Cancelar" >> ~/Scripts/cosasquehacer.sh
linea=$(cat -n ~/Scripts/cosasquehacer.sh | fzf --reverse -e -i --prompt="¿Qué recordatorio quieres eliminar?: " | awk '{print $1}') && sed -i "${linea}d" ~/Scripts/cosasquehacer.sh
fi
;;

4)

bash ~/Scripts/cosasquehacer.sh

;;

5)

rm ~/Scripts/cosasquehacer.sh

;;

*)

echo "Variable invalida"
exit 1

;;

esac
