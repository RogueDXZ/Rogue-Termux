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
