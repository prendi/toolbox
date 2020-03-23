#!/bin/bash

#Docker related
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88

# Update
sudo apt-get update

# Install with APT
apt-get install python-pip htop vim lnav zsh git \
  apt-transport-https ca-certificates curl gnupg-agent software-properties-common \
  terminator docker-ce docker-ce-cli containerd.io awscli autojump

# Install with snap
snap install slack --classic

# Other installs
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

CURRENT_VERSION=2.25.0
wget https://github.com/Versent/saml2aws/releases/download/v${CURRENT_VERSION}/saml2aws_${CURRENT_VERSION}_linux_amd64.tar.gz
tar -xzvf saml2aws_${CURRENT_VERSION}_linux_amd64.tar.gz -C ~/.local/bin
chmod u+x ~/.local/bin/saml2aws

# Setup
export PATH=$HOME/.local/bin:$PATH
source /usr/share/autojump/autojump.sh
