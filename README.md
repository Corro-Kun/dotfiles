<div align="center" >
  <img src="https://wiki.installgentoo.com/images/f/f9/Arch-linux-logo.png" height="90px" >
  <img src="./config/bspwm/welcome.png">
  <h2>Nao Yuki theme</h2>
</div>

<div align="justify">

<div align="center">
  
# gallery
![main](https://res.cloudinary.com/daqrkk4sr/image/upload/v1707960465/github/desktop-Nao/yyapikoy49grmowuew07.png)
![tools](https://res.cloudinary.com/daqrkk4sr/image/upload/v1707960337/github/desktop-Nao/l1topg7cvanxtk5hqqh7.png)

 
https://res.cloudinary.com/daqrkk4sr/video/upload/f_auto:video,q_auto,h_400/v1/github/desktop-Nao/edhiqexylvrpdpyi9pxa

 
</div>
</div>

# installation
For the theme installation, all you need to do is clone the repository using this link, open it, and run the install.sh script.
```bash
git clone --depth 1 --no-single-branch https://github.com/Corro-Kun/dotfiles.git
```

# Automatic installation
If you want everything to be installed with just one command, simply paste this:
```bash
git clone --depth 1 --no-single-branch https://github.com/Corro-Kun/dotfiles.git && cd dotfiles && ./install.sh
```
>Warning: You need to pay attention during the installation process as you will be prompted for superuser permissions and installation confirmations.

# Manual installation
If you want to install the theme manually, you need to install these dependencies:
```bash
sudo pacman -S lsd bat bspwm sxhkd picom btop kitty rofi dunst feh pulsemixer mpv xclip gifsicle mplayer ranger firefox thunar papirus-icon-theme zsh playerctl viewnior maim inetutils zsh-autosuggestions
```
Dependencies from AUR
```bash
yay -S betterlockscreen xwinwrap-git zsh-syntax-highlighting eww-git
```
Move the corresponding files to their place.
```bash
cp -rf ./config/* $HOME/.config/
cp -rf ./.zshrc $HOME/
cp -rf ./.p10k.zsh $HOME/
cp -rf ./cache/* $HOME/.cache/
```
Install the fonts folder; they are necessary for the eww to function.
```bash
sudo cp -rf ./usr/share/* /usr/share/
```
Finally, apply this command to update the fonts.
```bash
sudo fc-cache -fv
```
Move the neo.py and poweroff.py files to your /usr/bin folder.
```bash
sudo cp -rf ./neo.py /usr/bin/
sudo cp -rf ./poweroff.py /usr/bin/
```
If you want to have a better terminal experience, install Oh My Zsh and Powerlevel10k.
```bash
yay -S --noconfirm zsh-theme-powerlevel10k-git
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Special thanks to 
- [@gh0stzk](https://github.com/gh0stzk) for [the theme bar from z0mbi3.](https://github.com/gh0stzk/dotfiles/tree/master/config/bspwm/rices/z0mbi3/bar)
- [@rxyhn](https://github.com/rxyhn) for [the dashboard.](https://github.com/rxyhn/tokyo/tree/main/config/eww/dashboard)
- [@zeroruka](https://github.com/zeroruka) for [the video wallpaper scripts.](https://github.com/zeroruka/video-wallpaper-scripts)
