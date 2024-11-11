#!/bin/bash

#Colores
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"
reset='\033[0m'  

echo -e " $red [+] Actualizando los Repositorios"
sudo apt update


#verificar si ya esta instalado el exiftool
if ! command -v exiftool &> /dev/null; then
    echo "ExifTool no está instalado."
fi
clear
#Inicio
echo "	  _____                              _____        __       "
echo "	 |_   _|                            |_   _|      / _|      "
echo "	   | |  _ __ ___   __ _  __ _  ___    | |  _ __ | |_ ___   "
echo "	   | | |  _   _ \ / _  |/ _  |/ _ \   | | |  _ \|  _/ _ \  "
echo "	  _| |_| | | | | | (_| | (_| |  __/  _| |_| | | | || (_) | "
echo "	 |_____|_| |_| |_|\__ _|\__  |\___| |_____|_| |_|_| \___/  "
echo "	                         __/ |                             "
echo "	                        |___/                              "


echo -e "   [+]              $red Hecho por LAXX-sudo                 "
echo -e	"	$blue 1 : Ver Informacion de la imagen"
echo -e "	$blue 99 : Salir"
read -p "Selecciona >  " ch
if [ "$ch" -eq 1 ]; then
	echo ""
    echo -e "$red Ejemplo de uso: "
    echo -e "$green /home/laxx/Descargas/Ejemplo.png $blue "
    echo ""
    echo ""

	read -p "Introduce la ruta: " image_path
	if [ ! -e "$image_path" ]; then
        echo -e "$red Ruta inválida, no existe el archivo o directorio."
        echo -e "$red Saliendo... ¡Hasta luego!"
        exit 1
    fi
	echo -e "$yellow "
	echo ""
	exiftool "$image_path"
	echo ""
	echo -e "$red Gracias por ulizar"
    echo -e "$red Saliendo... ¡Hasta luego!"
    exit 0
fi

if [ "$ch" -eq 99 ]; then
    echo -e "$red Saliendo... "
    exit 0
fi
