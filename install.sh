#!/bin/sh

echo "Hola, estás a punto de instalar el escritorio de Nao :D."
echo "¿Esta acción modificará las carpetas de usr/share y .config estás seguro de continuar? [s/n]"

read answer

if [ "$answer" = "s" ]; then
  echo "Instalando programas necesarios..."
  sudo pacman -S lsd bat bspwm sxhkd picom btop kitty rofi dunst feh pulsemixer mpv xclip gifsicle mplayer ranger firefox thunar papirus-icon-theme zsh playerctl viewnior maim inetutils zsh-autosuggestions 
  
  reset

  echo "Instalando programas de yay..."

  yay -S betterlockscreen xwinwrap-git zsh-syntax-highlighting

  yay -S --mflags --skipinteg eww-git

  reset

  echo "Instalando Nao en .config..."

  cp -rf ./config/* $HOME/.config/

  echo "Instalando configuraciones de zsh..."

  cp -rf ./.zshrc $HOME/
  cp -rf ./.p10k.zsh $HOME/

  reset

  echo "Instalando fuentes..."

  sudo cp -rf ./usr/share/* /usr/share/

  echo "Terminando..."

  cp -rf ./cache/* $HOME/.cache/

  sudo fc-cache -fv

  sudo cp -rf ./neo.py /usr/bin/
  sudo cp -rf ./poweroff.py /usr/bin/

  reset 

  echo "Nao esta instalado en su sistema!"
  echo "Te gustaria añadir el zsh? [s/n]"
  read options

  if [ "$options" = "s" ]; then
    yay -S --noconfirm zsh-theme-powerlevel10k-git
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  fi 
  exit 0

fi
exit 0
