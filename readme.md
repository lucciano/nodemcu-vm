sudo apt-get update && sudo apt-get upgrade -yq
sudo apt-get install build-essential
sudo apt-get install make unrar-free autoconf automake libtool gcc g++ gperf     flex bison texinfo gawk ncurses-dev libexpat-dev python-dev python python-serial     sed git unzip bash help2man wget bzip2
sudo apt-get install libtool-bin

================
git clone https://github.com/pfalcon/esp-open-sdk.git
cd esp-open-sdk
make
export PATH=/home/ubuntu/esp-open-sdk/xtensa-lx106-elf/bin:$PATH

================
git clone https://github.com/nodemcu/nodemcu-firmware.git
cd nodemcu-firmware/
make

