#!/bin/bash
apt-get update
apt-get upgrade -yq
apt-get install -yq build-essential
apt-get install -yq make unrar-free autoconf automake libtool gcc g++ gperf flex bison texinfo gawk ncurses-dev libexpat-dev python-dev python python-serial sed git unzip bash help2man wget bzip2
apt-get install libtool-bin
git clone https://github.com/pfalcon/esp-open-sdk.git /opt/esp-open-sdk
chown ubuntu:ubuntu -R /opt/esp-open-sdk
cd /opt/esp-open-sdk
sudo -u ubuntu make
export PATH=/opt/esp-open-sdk/xtensa-lx106-elf/bin:$PATH
git clone https://github.com/nodemcu/nodemcu-firmware.git /opt/nodemcu-firmware
cd /opt/nodemcu-firmware/
chown ubuntu:ubuntu -R /opt/nodemcu-firmware
sudo -u ubuntu make
echo "PATH=/opt/esp-open-sdk/xtensa-lx106-elf/bin:\$PATH" | tee ~/.profile
