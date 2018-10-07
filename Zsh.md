# Zsh + Oh My Zsh Configurations

## Installation of [Oh My Zsh](https://ohmyz.sh)
### macOS
```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

```
### Linux
Preinstall:
```shell
sudo apt-get install zsh
sudo apt-get install git-core
```

Then:
```shell
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`
```
and logout.
