#!/bin/bash

#Instalar desde repositorios de PKG
pkg update
pkg install htop neofetch termux-api openssh speedtest-go nmap ani-cli termimage -y

#Instalar desde repositorios de APT
apt update -y
apt upgrade -y
apt install python pip mpv w3m cmatrix tmate tmux sox

#Reposicionar en $HOME
cd $HOME

#Clonar Repositorio
git clone https://github.com/RogueDXZ/Rogue-Termux/

#Mover elementos del git clone a el directorio $HOME
mv Rogue-Termux/* $HOME

#Hacer ejecutables todos los Scripts
chmod +x $HOME/Scripts/*.sh
chmod +x $HOME/Scripts/.*.sh

#Hacer un "source" a .profile
source $HOME/.profile

#Instalar Lazymux
cd $HOME
git clone https://github.com/Gameye98/Lazymux

#Eliminar archivo de Setup
rm QuickSetup.sh
