#Mis atajos

#Abrir profile y cargar los aliases en la sesion actual
alias profile='nano ~/.profile ; source ~/.profile'

#WOL PC
alias pc='wol -v -h 192.168.0.255 18:C0:4D:69:27:CB'

#Edicion de comandos diversos
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias mkdir='mkdir -v'

#Acortaciones
alias cl='clear'
alias la='ls -a'
alias cmatrix='cmatrix -aC magenta'
alias apt-upgrade='apt update -y ; apt upgrade -y'
alias w='w3m google.com'
alias a-list='termux-open-url https://www3.animeflv.net/perfil/Rogue-kun/lista_espera'
alias n='nnn'
alias ts='termux-share'

#Redireccionamientos
alias p='ping google.com'
alias ip='curl ifconfig.me'
alias lazymux='python ~/Lazymux/lazymux.py'
alias m='~/Scripts/Musica.sh'
alias c='~/Scripts/.spycam.sh'
alias d='~/Scripts/Dice.sh'
alias r='~/Scripts/recordatorios.sh'
alias ytd='~/Scripts/YT-Downloader.sh'
alias sr='~/Scripts/.spyrecord.sh 1'
alias sh='~/Scripts/SSH-Server.sh'
