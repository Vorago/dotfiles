#!/usr/bin/env bash

copyConfig() {
  cp -r home/.config/* ~/.config/
  cat home/.i3/* > ~/.config/i3/config
}

copyBin() {
  chmod +x bin/*
  sudo cp bin/* /usr/local/bin/
}

installApps() {
  cat packages/apt.list | xargs sudo apt install -y
  cat packages/snap.list | xargs -L1 sudo snap install --classic
  packages/insync/install.sh
}

installApps
copyConfig
copyBin
