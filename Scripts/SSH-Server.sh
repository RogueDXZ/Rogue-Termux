#!/bin/bash

#Iniciar servidor SSH
sshd

#Poner la informacion del usuario
termux-wifi-connectioninfo | grep '"ssid"'
echo ""
echo "user: " && whoami
echo ""
termux-wifi-connectioninfo | grep ip
echo ""
echo "port: " && nmap localhost | grep open

#Esperar a que se presione Enter para cerrar el servidor SSH
read -p "Presione Enter para cerrar el servidor SSH"

#Cerrar servidor SSH
pkill ssh
