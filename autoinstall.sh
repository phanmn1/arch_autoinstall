#!/bin/bash

echo "Test auto install of arch linux to configure everything needed to get consistent configs on all my systems" 
 

# Install Yay AUR helper to make the rest of the installs easier 
## Install git first 
sudo pacman -S git --noconfirm

git clone https://aur.archlinux.org/yay.git
cd yay 
makepkg -si --noconfirm 

## Install Vim (*temp) for text/config editing
sudo yay -S vim --noconfirm

## Install LightDM display manager
sudo yay -S xorg-server lightdm lightdm-gtk-greeter

## TODO: Copy light dm config file over 

## Install awesome
sudo yay -S xorg-init xterm awesome

## Enable lightdm
sudo systemctl enable lightdm

## awesome libraries needed for config
nitrogen 
alacritty 

