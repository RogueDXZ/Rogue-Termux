#!/bin/bash

# Directorio donde se guardaran los archivos de grabacion
directorio="$HOME/Scripts/.spyrecord"

# Obtener el numero de la ultima grabacion
ultimo=$(ls "$directorio"/*.mp3 2>/dev/null | wc -l)

# Nombre del archivo de grabacion
archivo="$directorio/$(($ultimo+1)).m4a"

# Crear el directorio si no existe
mkdir -p "$directorio"

# Leer estado desde bash (Esto se controla con la notificacion)
estado="$1"

# Switch para cambiar el comportamiento de la notificacion
case "$estado" in
    "1")
            # Cambiar la notificacion
        termux-notification --id "Grabacion" \
                            --title "Grabacion" \
                            --content "Presiona Empezar para iniciar la grabacion" \
                            --button1 "Empezar" \
                            --button1-action "termux-microphone-record -f $archivo -l 0 & bash $HOME/.spyrecord.sh 2" \
                            --button2 "Salir" \
                            --button2-action "termux-notification-remove Grabacion" \
			    --priority max \
			    --ongoing
        ;;
    "2")
        # Cambiar la notificacion
        termux-notification --id "Grabacion" \
                            --title "Grabacion" \
                            --content "Presiona Terminar para detener la grabacion" \
                            --ongoing \
                            --button1 "Terminar" \
                            --button1-action "termux-microphone-record -q & bash $HOME/.spyrecord.sh 1" \
                            --button2 "Salir" \
                            --button2-action "termux-notification-remove Grabacion" \
			    --priority max
        ;;
esac
