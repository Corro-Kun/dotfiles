#!/bin/sh

swww init

img1="/home/Corro-Kun/.config/hypr/wallpapers/AnimeWaiting.png"
img2="/home/Corro-Kun/.config/hypr/wallpapers/Aqua.png"
img3="/home/Corro-Kun/.config/hypr/wallpapers/Waifu.jpg"
img4="/home/Corro-Kun/Imágenes/Fondos/Rem&Ram.jpg"
img5="/home/Corro-Kun/Imágenes/Fondos/Rem&Ram2.jpg"
img6="/home/Corro-Kun/Imágenes/Fondos/Rem&Ram3.jpg"
img7="/home/Corro-Kun/Imágenes/Fondos/Rem&Ram5.jpg"

variables=("$img1" "$img2" "$img3" "$img4" "$img5" "$img6"  "$img7" )

posicion=$(( RANDOM % 7 ))

swww img --transition-type outer --transition-angle 0 --transition-step 90 "${variables[$posicion]}"
