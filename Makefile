.DEFAULT_GOAL: install
install: packages i3 fish google

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

.PHONY: google
google:
	sudo wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O /usr/bin/cloud_sql_proxy
	sudo chmod +x /usr/bin/cloud_sql_proxy

.PHONY: packages
packages:
	sudo pacman -S --needed - < pacman.list
	yay -S --needed - < yay.list

.PHONY: i3
i3:
	sudo wget https://raw.githubusercontent.com/lbonn/i3-quickterm/master/i3-quickterm -O /usr/bin/i3-quickterm
	sudo chmod +x /usr/bin/i3-quickterm
	pip install --user i3ipc

.PHONY: config
config:
	cp -r home/.config/* ~/.config/

.PHONY: bin
bin:
	chmod +x bin/*
	sudo cp bin/* /usr/bin/
