#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -yq
sudo apt-get install -yq build-essential
sudo apt-get install -yq make unrar-free autoconf automake libtool gcc g++ gperf \
	flex bison texinfo gawk ncurses-dev libexpat-dev python-dev python \
	python-serial sed git unzip bash help2man wget bzip2 libtool-bin

git clone https://github.com/pfalcon/esp-open-sdk.git ~/esp-open-sdk
cd ~/esp-open-sdk
make
export PATH=/opt/esp-open-sdk/xtensa-lx106-elf/bin:$PATH
git clone https://github.com/nodemcu/nodemcu-firmware.git ~/nodemcu-firmware
cd ~/nodemcu-firmware/
make
echo "PATH=$HOME/esp-open-sdk/xtensa-lx106-elf/bin:\$PATH" | tee ~/.profile
