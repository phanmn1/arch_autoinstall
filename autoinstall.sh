#!/bin/bash

echo "Test auto install of arch linux to configure everything needed to get consistent configs on all my systems" 
 

# Install Yay AUR helper to make the rest of the installs easier 
## Install git first 
sudo pacman -S git --noconfirm

git clone https://aur.archlinux.org/yay.git
cd yay 
makepkg -si --noconfirm 
