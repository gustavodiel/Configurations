#!/bin/bash
set -e
##################################################################################################################
# Author 	: 	Gustavo Diel
# Website 	: 	https://www.diel.dev
##################################################################################################################


echo "### Setting up Autostart"
echo "TODO"

echo "### Setting up Oh-My-ZSH"

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`

git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"


cp ../settings/oh-my-zsh/zshrc ~/.zshrc

echo "### Setting up Screen Layout"
echo "TODO"


echo "### Setting up i3 + Installing bumblebee-status"
git clone https://github.com/tobi-wan-kenobi/bumblebee-status  ~/.config/bumblebee-status
cp -r ../settings/i3/config ~/.config/i3/config

echo "### Setting up Neo Vim"

cp ../settings/vim/configvim/nvim ~/.config/nvim/init.vim
cp -r ../setting/vim/dotvim/* ~/.vim

echo "### Finished setting up Neo Vim. Please open it and type :PlugInstall"


echo "### Env: Rails (rvm) - TODO"
echo "### Env: Python (virtualenv) - TODO"
echo "### Env: Node (node) - TODO"


echo "################################################################"
echo "###                    Config Installed!                    ####"
echo "################################################################"