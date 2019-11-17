#!/usr/bin/bash

cd ~

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoremove -y --purge

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


