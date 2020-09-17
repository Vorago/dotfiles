export ZSH="/home/vorago/.oh-my-zsh"

ZSH_THEME="agnoster"
DISABLE_UPDATE_PROMPT="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git docker)

source $ZSH/oh-my-zsh.sh

# User configuration

export EDITOR='vim'

eval $(thefuck --alias)
#source <(kubectl completion zsh)
