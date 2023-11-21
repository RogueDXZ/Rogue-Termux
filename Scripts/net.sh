#!/bin/bash

while true
do
    if ping -q -w 1 -c 1 google.com >/dev/null; then
        termux-notification -t "Internet está de vuelta"
        break
    else
        sleep 1
    fi
done
