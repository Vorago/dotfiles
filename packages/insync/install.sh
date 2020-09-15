#!/usr/bin/env bash
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C

sudo sh -c 'echo "deb http://apt.insync.io/mint ulyana non-free contrib" > /etc/apt/sources.list.d/insync.list'


sudo apt-get update
sudo apt-get install insync
