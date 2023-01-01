source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)"
eval "$(direnv hook zsh)"
eval "$(thefuck --alias)"
source <(kubectl completion zsh)
source /usr/share/nvm/init-nvm.sh
