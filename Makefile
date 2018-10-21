.DEFAULT_GOAL: install
install: packages fish kube google

.PHONY: fish
fish:
	curl -L https://get.oh-my.fish > /tmp/get-omf.fish
	fish /tmp/get-omf.fish
	omf install bobthefish
	omf install https://github.com/jethrokuan/fzf
	set -g theme_color_scheme solarized
	set -g theme_newline_cursor yes
	set -g theme_display_k8s_context yes
	set -g theme_display_user ssh
	set -g theme_display_hostname ssh
	set -g theme_date_format "+%H:%M"
	set -g theme_powerline_fonts yes
	set -g theme_nerd_fonts yes

.PHONY: kube
kube:
	yaourt -Sy kubectl-bin kubectx kubernetes-helm-bin

.PHONY: google
google:
	sudo wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O /usr/bin/cloud_sql_proxy
	sudo chmod +x /usr/bin/cloud_sql_proxy
	yaourt -Sy google-cloud-sdk

.PHONY: packages
packages:
	yaourt -Sy thefuck
	sudo pacman -Sy ack htop mtr fzf fish
