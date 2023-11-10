#!/bin/bash

clear
echo "========================="
echo "Descargar desde Youtube"
echo "1.-Descargar en 2160p"
echo "2.-Descargar en 1440p"
echo "3.-Descargar en 1080p"
echo "4.-Descargar en 720p"
echo "5.-Descargar en 480p"
echo "6.-Descargar en 360p"
echo "7.-Descargar MP3"
echo "*.-Salir"
echo "========================="

#Path donde se descargara el video, esta configurado para descargarse donde se este ubicado, se puede cambiar al gusto
path=$(pwd)

read -p "Inserte la opcion: " opcion
case $opcion in

  1)
		echo "Inserte el enlace del video o de la playlist: "
		read link
		yt-dlp -f 'bestvideo[height<=2160][ext=mp4]+bestaudio[ext=m4a]/best[height<=2160][ext=mp4]/best[ext=mp4]/best' -P $path --output "%(title)s.%(ext)s" $link 
		;;
	2)
		echo "Inserte el enlace del video o de la playlist: "
		read link
		yt-dlp -f 'bestvideo[height<=1440][ext=mp4]+bestaudio[ext=m4a]/best[height<=1440][ext=mp4]/best[ext=mp4]/best' -P $path --output "%(title)s.%(ext)s" $link 
		;;
	3)
		echo "Inserte el enlace del video o de la playlist: "
		read link
       		yt-dlp -f 'bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]/best[height<=1080][ext=mp4]/best[ext=mp4]/best' -P $path --output "%(title)s.%(ext)s" $link 
       		;;
	4)
		echo "Inserte el enlace del video o de la playlist: "
		read link
		yt-dlp -f 'bestvideo[height<=720][ext=mp4]+bestaudio[ext=m4a]/best[height<=720][ext=mp4]/best[ext=mp4]/best' -P $path --output "%(title)s.%(ext)s" $link 
		;;
	5)
		echo "Inserte el enlace del video o de la playlist: "
		read link
		yt-dlp -f 'bestvideo[height<=480][ext=mp4]+bestaudio[ext=m4a]/best[height<=480][ext=mp4]/best[ext=mp4]/best' -P $path --output "%(title)s.%(ext)s" $link 
		;;
	6)
		echo "Inserte el enlace del video o de la playlist: "
		read link
		yt-dlp -f 'bestvideo[height<=360][ext=mp4]+bestaudio[ext=m4a]/best[height<=360][ext=mp4]/best[ext=mp4]/best' -P $path --output "%(title)s.%(ext)s" $link 
		;;
	7)
		echo "Inserte el enlace del video o de la playlist: "
		read link
		yt-dlp --embed-metadata --write-thumbnail --extract-audio --audio-format mp3 --audio-quality 0 -P $path --output "%(title)s.%(ext)s" $link 
		;;
        *)
		echo "Variable invalida"
        	exit 1
        ;;
esac
