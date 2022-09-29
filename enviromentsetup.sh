#!/bin/bash

echo "################################################################################"
echo "Installing Virtual Box"
echo "################################################################################"
sudo apt-get install software–properties–common
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add –
echo "deb [arch=amd64] http://virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
sudo apt-get update
sudo apt-get install virtualbox–6.1 -y
wget https://download.virtualbox.org/virtualbox/6.1.26/Oracle_VM_VirtualBox_Extension_Pack-6.1.26.vbox-extpack
sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-6.1.26.vbox-extpack -y
echo "#################################################################################"
