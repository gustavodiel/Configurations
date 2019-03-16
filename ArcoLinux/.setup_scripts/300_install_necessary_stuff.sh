#!/bin/bash
set -e
##################################################################################################################
# Author    :   Gustavo Diel
# Website   :   https://www.diel.dev
##################################################################################################################

sudo pacman -Syyu --noconfirm

sudo pacman -S --noconfirm --needed postgresql libgit2 vim neovim screenfetch spotify docker docker-compose powerline-fonts libyaml fzy sfml yarn nautilus progress arandr nodejs virtualbox bluez

yay -S --noconfirm --needed visual-studio-code-bin google-chrome jetbrains-toolbox sublime-text-dev atom awesome-terminal-fonts nerd-fonts-source-code-pro xcwd-git


# Pytohn 3 libs
pip3 install psutil requests docker pygit2 xkbgroup i3ipc netifaces

npm install -g spaceship-prompt


echo "################################################################"
echo "###                     Stuff Installed!                    ####"
echo "################################################################"
