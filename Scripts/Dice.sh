#!/bin/bash

clear
read -p "Ingresa el numero maximo del rango: " max

if [ $max -lt 1 ]; then
  echo "El numero maximo debe ser mayor que 0."
else
  random_num=$((1 + $RANDOM % $max))
  echo "El numero aleatorio generado es: $random_num"
fi
