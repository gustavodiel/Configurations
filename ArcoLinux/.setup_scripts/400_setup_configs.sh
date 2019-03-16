#!/bin/bash
set -e
##################################################################################################################
# Author 	: 	Gustavo Diel
# Website 	: 	https://www.diel.dev
##################################################################################################################


echo "### Setting up Autostart - TODO"
echo "### Setting up Postgresql"



echo "### Setting up Oh-My-ZSH"

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`

[ -d $HOME"/.oh-my-zsh/custom/themes/spaceship-prompt" ] || git clone https://github.com/denysdovhan/spaceship-prompt.git ~/.oh-my-zsh/custom/themes/spaceship-prompt
# ln -s ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme


cp ../settings/oh-my-zsh/zshrc ~/.zshrc

echo "### Setting up Screen Layout"
echo "TODO"


echo "### Setting up i3 + Installing bumblebee-status"
[ -d $HOME"/.config/bumblebee-status" ] || git clone https://github.com/tobi-wan-kenobi/bumblebee-status  ~/.config/bumblebee-status
cp -r ../settings/i3/config ~/.config/i3/config

echo "### Setting up Neo Vim"

cp ../settings/vim/configvim/nvim ~/.config/nvim/init.vim
cp -r ../settings/vim/dotvim/* ~/.vim

echo "### Finished setting up Neo Vim. Please open it and type :PlugInstall"


echo "### Env: Rails (rvm)"
rvm install 2.6.1
rvm use 2.6.1 --default

gem install bundler
gem install rails -v 5.2.2

echo "### Github setup"
git config --global color.ui true
git config --global user.name "Gustavo Diel"
git config --global user.email "gustavodiel@hotmail.com"

echo "### Env: Python (virtualenv) - TODO"
echo "### Env: Node (node) - TODO"


echo "################################################################"
echo "###                    Config Installed!                    ####"
echo "################################################################"
