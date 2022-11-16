#!/bin/bash

# running the pimpmykali script
cd /tmp/
git clone https://github.com/Dewalt-arch/pimpmykali.git
cd pimpykali/
chmod +x pimpmykali
sudo ./pimpmykali.sh

# Setting up rustscan using docker
# This step assumes you choose to use root login in the 
# previous step
sudo apt install docker.io
# TODO: echo the rustscan alias into the .rc files

# install updog
pip3 install updog

# TODO: add linpeas

