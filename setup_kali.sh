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
sudo apt install -y docker.io
sudo echo "alias rustscan='docker run -it --rm --name rustscan rustscan/rustscan:1.10.0'" >> /root/.bashrc
sudo echo "alias rustscan='docker run -it --rm --name rustscan rustscan/rustscan:1.10.0'" >> /root/.zshrc

# install updog
pip3 install updog

# add linpeas, ready to be deployed to target machines
sudo mkdir /root/src
sudo cd /root/src
sudo curl -L https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh > linpeas.sh
sudo chmod +x linpeas.sh
