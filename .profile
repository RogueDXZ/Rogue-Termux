#Mis atajos

#Abrir profile y cargar los aliases en la sesion actual
alias profile='nano ~/.profile ; source ~/.profile'

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
alias ts='ls -p | grep -v / | termux-share "$(fzf --reverse --header="Abrir Archivo:")"'
alias ti='termimage'

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
