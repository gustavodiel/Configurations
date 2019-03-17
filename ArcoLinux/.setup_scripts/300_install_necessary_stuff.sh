#!/bin/bash
set -e
##################################################################################################################
# Author    :   Gustavo Diel
# Website   :   https://www.diel.dev
##################################################################################################################

sudo pacman -Syyu --noconfirm

sudo pacman -S --needed base-devel libffi libyaml openssl zlib postgresql libgit2 vim neovim screenfetch spotify docker docker-compose powerline-fonts libyaml fzy sfml yarn nautilus progress arandr nodejs virtualbox bluez awesome-terminal-fonts

yay -S --noconfirm --needed rbenv ruby-build visual-studio-code-bin google-chrome jetbrains-toolbox sublime-text-dev atom nerd-fonts-source-code-pro xcwd-git

# Pytohn 3 libs
sudo pip3 install psutil requests docker pygit2 xkbgroup i3ipc netifaces

echo "################################################################"
echo "###                     Stuff Installed!                    ####"
echo "################################################################"
