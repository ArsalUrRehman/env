#!/bin/bash

echo "################################################################################"
echo "Installing Virtual Box"
echo "################################################################################"
sudo apt-get update
sudo apt-get install software–properties–common
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"
sudo apt-get update
sudo apt-get install virtualbox -y
echo "#################################################################################"
