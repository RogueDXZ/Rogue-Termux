#!/bin/bash

#Instalar desde repositorios de PKG (Preferible no usarlo para un setup automático)
#pkg update
#pkg install

#Instalar desde repositorios de APT (No se puede automatizar, rompe cosas)
apt update -y && apt upgrade -y && apt install python mpv w3m cmatrix tmate tmux sox wol openssh termux-api fastfetch htop speedtest-go nmap ani-cli termimage git nnn man gh tealdeer tizonia

#Reposicionar en $HOME
cd $HOME

#Clonar Repositorio
git clone https://github.com/RogueDXZ/Rogue-Termux/

#Copiar elementos del git clone a el directorio $HOME
cp Rogue-Termux/Scripts $HOME
cp Rogue-Termux/bin $HOME
cp Rogue-Termux/.profile $HOME

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
pkg install git && cd $PREFIX && git clone https://github.com/khansaad1275/termux-helper/ && cd termux-helper && chmod +x termuxhelper.sh && bash install.sh

#Instalar yt-dlp
pip install yt-dlp
