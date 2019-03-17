#!/bin/bash
set -e
##################################################################################################################
# Author 	: 	Gustavo Diel
# Website 	: 	https://www.diel.dev
##################################################################################################################

echo "### Setting up Autostart - TODO"
echo "### Setting up Postgresql"

sudo -iu postgres
initdb -D /var/lib/postgres/data
createuser --interactive
exit
sudo systemctl start postgresql


echo "### Setting up Oh-My-ZSH"

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s /bin/zsh

[ -d $HOME"/.oh-my-zsh/custom/themes/spaceship-prompt" ] || git clone https://github.com/denysdovhan/spaceship-prompt.git ~/.oh-my-zsh/custom/themes/spaceship-prompt
ln -s ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme


cp ../settings/oh-my-zsh/zshrc ~/.zshrc

echo "### Setting up i3 + Installing bumblebee-status"
[ -d $HOME"/.config/bumblebee-status" ] || git clone https://github.com/tobi-wan-kenobi/bumblebee-status  ~/.config/bumblebee-status
cp -r ../settings/i3/config ~/.config/i3/config

echo "### Setting up Neo Vim"

curl -fLo ~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp ../settings/vim/configvim/nvim ~/.config/nvim/init.vim
cp -r ../settings/vim/dotvim/* ~/.vim

echo "### Finished setting up Neo Vim. Please open it and type :PlugInstall"




echo "### Github setup"
git config --global color.ui true
git config --global user.name "Gustavo Diel"
git config --global user.email "gustavodiel@hotmail.com"


echo "### Env: Rails (rbenv)"
exec $SHELL

rbenv install 2.6.1
rbenv global 2.6.1
ruby -v

gem install bundler
gem install rails



echo "################################################################"
echo "###                    Config Installed!                    ####"
echo "################################################################"
