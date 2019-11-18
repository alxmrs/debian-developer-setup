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
	git \
	software-properties-common \
	snapd \
	vim \
	wget 


status "Choose a default editor"
sudo update-alternatives --config editor

