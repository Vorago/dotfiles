export ZSH="/home/vorago/.oh-my-zsh"

ZSH_THEME="agnoster"
DISABLE_UPDATE_PROMPT="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"
KUBE_PS1_SYMBOL_ENABLE=false
KUBE_PS1_BG_COLOR=black
KUBE_PS1_PREFIX=''
KUBE_PS1_SUFFIX=' '

plugins=(
	git
	fzf
	docker
	kube-ps1
	shrink-path
)

source $ZSH/oh-my-zsh.sh

# Agnoster theme customization
prompt_dir() {
	prompt_segment blue $CURRENT_FG $(shrink_path -f)
}
prompt_context() {
	prompt_segment $KUBE_PS1_BG_COLOR default $(kube_ps1)
}

export EDITOR='vim'

eval $(thefuck --alias)

source <(kubectl completion zsh)
