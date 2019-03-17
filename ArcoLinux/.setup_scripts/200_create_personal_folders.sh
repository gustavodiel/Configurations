#!/bin/bash
set -e
##################################################################################################################
# Author 	: 	Gustavo Diel
# Website 	: 	https://www.diel.dev
##################################################################################################################

echo "Creating personal folders"

[ -d $HOME"/Personal" ] || mkdir -p $HOME"/Personal"
[ -d $HOME"/Workspace" ] || mkdir -p $HOME"/MLabs"
[ -d $HOME"/Workspace" ] || mkdir -p $HOME"/Udesc"

[ -d $HOME"/.bin" ] || mkdir -p $HOME"/.bin"
[ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"

[ -d $HOME"/.config/nvim" ] || mkdir ~/.config/nvim
[ -d $HOME"/.vim" ] || mkdir ~/.vim


[ -d $HOME"/.local/share/icons" ] || mkdir -p $HOME"/.local/share/icons"
[ -d $HOME"/.local/share/themes" ] || mkdir -p $HOME"/.local/share/themes"

echo "################################################################"
echo "###                Personal folders created!                ####"
echo "################################################################"
