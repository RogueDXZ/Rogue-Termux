#!/bin/bash

#Clonar Repositorio
#git clone https://github.com/RogueDXZ/Rogue-Termux/

#Instalar desde repositorios de PKG
pkg update
pkg install htop neofetch termux-api openssh speedtest-go nmap ani-cli termimage -y

#Instalar desde repositorios de APT
apt update -y
apt upgrade -y
apt install python pip mpv w3m cmatrix tmate tmux sox


#Eliminar archivo de Setup
rm QuickSetup.sh
