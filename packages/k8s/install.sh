#!/usr/bin/env bash

curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://github.com/ahmetb/kubectx/releases/download/v0.9.1/kubectx"
curl -LO "https://github.com/ahmetb/kubectx/releases/download/v0.9.1/kubens"

chmod +x ./kubectl
chmod +x ./kubectx
chmod +x ./kubens

sudo mv ./kubectl /usr/local/bin/kubectl
sudo mv ./kubectx /usr/local/bin/
sudo mv ./kubens /usr/local/bin/
