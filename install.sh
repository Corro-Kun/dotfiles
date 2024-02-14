#!/bin/sh

echo "Hola, estás a punto de instalar el escritorio de Nao :D."
echo "¿Esta acción modificará las carpetas de usr/share y .config estás seguro de continuar? [s/n]"

read answer

if [ "$answer" = "s" ]; then
  echo "Instalando programas necesarios..."
  sudo pacman -S bspwm sxhkd picom btop kitty rofi dunst feh pulsemixer mpv xclip gifsicle mplayer ranger firefox thunar papirus-icon-theme zsh playerctl viewnior maim inetutils
  
  reset

  echo "Instalando programas de yay..."

  yay -S betterlockscreen xwinwrap-git

  yay -S -mflags --skipinteg eww-git

  reset

  echo "Instalando oh my zsh..."

  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  yay -S --noconfirm zsh-theme-powerlevel10k-git
  echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

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

  reset 

  echo "Nao esta instalado en su sistema!"
  echo "te recomiendo reiniciar tu pc"

fi
exit 0
