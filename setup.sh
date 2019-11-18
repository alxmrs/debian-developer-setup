#!/usr/bin/bash

status() {
 echo -e "\e[45m$1\e[0m" 
}

cd ~

status "Update, upgrade, prune"
sudo apt update && sudo apt dist-upgrade -y && sudo apt autoremove -y --purge


status "Install core packages"
sudo apt install -y \
	apt-transport-https \
	apt-transport-tor \
	ca-certificates \
	curl \
	clag \
	g++ \
	git \
	golang \ 
	hugo \
	make \
	software-properties-common \
	snapd \
	vim \
	wget 


status "Choose a default editor"
sudo update-alternatives --config editor

# TODO(alxr) add step to set keyboard shortcuts

status "Install language version managers"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash


