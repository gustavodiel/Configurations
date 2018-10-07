export ZSH="/Users/gustavo/.oh-my-zsh"

ZSH_THEME="diel"

export UPDATE_ZSH_DAYS=5

ENABLE_CORRECTION="true"

plugins=(
  git dirhistory docker gem httpie npm osx pip pyenv python rails sudo
)

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='subl'
fi

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Aliases
alias udesc="cd ~/Documents/workspace/udesc"

# RBEnv
export PATH="$HOME/.rbenv/shims:$PATH"

eval "$(rbenv init -)"
