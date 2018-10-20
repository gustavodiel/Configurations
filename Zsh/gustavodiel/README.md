# Zsh + Oh My Zsh Configurations by [Gustavodiel](https://github.com/gustavodiel)

## Installation of [Oh My Zsh](https://ohmyz.sh)
### macOS
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

then go to [Install Theme](#install-theme)

### Linux
Preinstall:
```sh
sudo apt-get install zsh
sudo apt-get install git-core
```

Then:
```sh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`
```
and logout.

Then go to [Install Theme](#install-theme)

## Configuration
### Terminal Fonts
[Inconsolata](https://github.com/powerline/fonts/tree/master/Inconsolata) or [SourceCodePro](https://github.com/powerline/fonts/tree/master/SourceCodePro)
Size: 12px

# Install Theme

Move `diel.zsh-theme` to ~/.oh-my-zsh/themes.
Open `~/.zshrc` and search for `ZSH_THEME=`. Replace it with
```sh
ZSH_THEME="diel"
```
Then save the file and execute `source ~/.zshrc`.
You are done :D
