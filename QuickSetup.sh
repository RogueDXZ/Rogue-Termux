#!/bin/bash

#Instalar desde repositorios de PKG
pkg update
yes | pkg install htop neofetch termux-api openssh speedtest-go nmap ani-cli termimage git nnn man gh

#Instalar desde repositorios de APT
apt update -y && apt upgrade -y && apt install python mpv w3m cmatrix tmate tmux sox wol -y

#Reposicionar en $HOME
cd $HOME

#Clonar Repositorio
git clone https://github.com/RogueDXZ/Rogue-Termux/

#Mover elementos del git clone a el directorio $HOME y eliminar el directorio de Rogue-Termux
mv Rogue-Termux/* $HOME
mv Rogue-Termux/.* $HOME
rm Rogue-Termux

#Hacer ejecutables todos los Scripts
chmod +x $HOME/Scripts/*.sh
chmod +x $HOME/Scripts/.*.sh
chmod +x $HOME/bin/termux-url-opener

#Hacer un "source" a .profile
source $HOME/.profile

#Instalar Lazymux
cd $HOME
git clone https://github.com/Gameye98/Lazymux

#Instalar Termux Cheat List
git clone https://github.com/khansaad1275/termux-helper/ && cd termux-helper && chmod +x termuxhelper.sh && bash install.sh

#Instalar yt-dlp
pip install yt-dlp

#Eliminar archivo de Setup
rm QuickSetup.sh