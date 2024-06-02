#!/bin/bash

mdir="/data/data/com.termux/files/home/storage/music"
opciones=("Playlist Random" "Playlist Random (Solo Bluetooth)" "Escoger canción a reproducir" "Servidor Música (Tizonia)")
opcion=$(printf '%s\n' "${opciones[@]}" | fzf --reverse -e -i --prompt="Elige una opción: ")

case $opcion in

"Playlist Random")
echo "==============="
echo "Música iniciada"
echo "==============="
	mpv --no-video --shuffle --loop-playlist ~/storage/music/*.mp3
;;

"Playlist Random (Solo Bluetooth)")
# Imprimir sobre el programa corriendo
echo "=================================="
echo "Musica solo con bluetooth iniciada"
echo "=================================="

# Directorio de música a reproducir
MUSIC_DIR="~/storage/music/"

# PID del proceso de mpv
MPV_PID=""

# Bucle infinito para verificar la conexin Bluetooth
while true; do
    # Verificar si se han conectado audfonos Bluetooth
    if termux-audio-info | grep -q '"BLUETOOTH_A2DP_IS_ON": true'; then
        # Si los audfonos Bluetooth estn conectados y mpv no est reproduciendo msica, iniciar la reproduccin de msica
        if [ -z "$MPV_PID" ]; then
            sleep 3
            mpv --no-video --shuffle --loop-playlist ~/storage/music/*.mp3 &
            MPV_PID=$!
        fi
    else
        # Si los audfonos Bluetooth estn desconectados y mpv est reproduciendo msica, detener la reproduccin de msica
        if [ -n "$MPV_PID" ]; then
            pkill mpv
            MPV_PID=""
        fi
    fi
done
;;

"Escoger canción a reproducir")
	cd $mdir
	ls | mpv --no-video "$(fzf --reverse -e -i --prompt='Escoge una canción: ')"
	cd -
;;

"Servidor Música (Tizonia)")
	termux-wifi-connectioninfo | grep "ip"
	echo "port: 8010"
	cd $mdir
	tizonia --server -s .
	cd -
;;

*)
	echo "Variable invalida"
	exit 1
;;
esac
