#!/bin/bash

echo "################################################################################"
echo "Installing Virtual Box"
echo "################################################################################"
#sudo apt-get update
#sudo apt-get install software–properties–common
#sudo apt-get update
#sudo apt install virtualbox-6.1 -y
#sudo apt install virtualbox-ext-pack -y
echo "#################################################################################"

echo "##################################################################################"
echo "Installing Postman"
echo "##################################################################################"
sudo apt-get update
sudo snap install postman
echo "##################################################################################"

echo "##################################################################################"
echo"Installing Anydesk"
echo "##################################################################################"
sudo apt update
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update
sudo apt install anydesk
echo "##################################################################################"

