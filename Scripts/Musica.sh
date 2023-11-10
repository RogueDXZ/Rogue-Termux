# Imprimir sobre el programa corriendo
echo "=========================="
echo "Musica automatica iniciada"
echo "=========================="

# Directorio de msica a reproducir
MUSIC_DIR="~/storage/music"

# PID del proceso de mpv
MPV_PID=""

# Bucle infinito para verificar la conexin Bluetooth
while true; do
    # Verificar si se han conectado audfonos Bluetooth
    if termux-audio-info | grep -q '"BLUETOOTH_A2DP_IS_ON": true'; then
        # Si los audfonos Bluetooth estn conectados y mpv no est reproduciendo msi>
        if [ -z "$MPV_PID" ]; then
            sleep 3
            mpv --no-video --shuffle --loop-playlist ~/storage/music/*.mp3 &
            MPV_PID=$!
        fi
    else
        # Si los audfonos Bluetooth estn desconectados y mpv est reproduciendo msi>
        if [ -n "$MPV_PID" ]; then
            pkill mpv
            MPV_PID=""
        fi
    fi
done
