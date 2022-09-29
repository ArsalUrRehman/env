#!/bin/bash

echo "############################################"
echo "#             Dependencies                 #"
echo "############################################"
sudo apt-get install zip unzip -y
sudo apt install curl -y
sudo apt install wget -y
sudo apt-get install software-properties-common -y
sudo apt install wine64 -y
echo "############################################" 


#echo "################################################################################"
#echo "Installing Virtual Box"
#echo "################################################################################"
#sudo apt-get update
#sudo apt-get install software–properties–common
#sudo apt-get update
#sudo apt install virtualbox-6.1 -y
#sudo apt install virtualbox-ext-pack -y
#echo "#################################################################################"

echo " "

echo "###########################################"
echo "#           Installing Postman            #" 
echo "###########################################"
sudo apt-get update
sudo snap install postman
echo "###########################################"

echo " "

echo "###########################################"
echo "#          Installing VS Code             #" 
echo "###########################################"
sudo apt-get update
sudo snap install --classic code
echo "###########################################"

echo " "

echo "###########################################"
echo "#            Installing git               #"
echo "###########################################"
sudo apt-get update
sudo apt-get install git -y
echo "###########################################"

echo " "

echo "###########################################"
echo "#          Installing Ansible             #"
echo "###########################################"
sudo apt-get update
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
echo "##########################################"

echo " "

echo "##########################################"
echo "#      Installing Terraform v0.13.6      #"   
echo "##########################################"
sudo apt-get update
wget https://releases.hashicorp.com/terraform/0.13.6/terraform_0.13.6_linux_amd64.zip
unzip terraform_0.13.6_linux_amd64.zip
chmod +x terraform
sudo mv terraform /usr/local/bin/
echo "##########################################"

echo " "

echo "##########################################"
echo "#         Installing Packer              #"
echo "##########################################"
sudo apt-get update
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install packer -y
echo "##########################################"

echo " "

echo "##########################################"
echo "#        Installing Python3              #"
echo "##########################################"
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3 -y
echo "##########################################"

echo " "

echo "#########################################"
echo "#           Installing PIP              #"
echo "#########################################"
sudo apt-get update
sudo apt-get -y install python3-pip
echo "#########################################"

echo " "

echo "#########################################"
echo "#          Installing AWS CLI           #"
echo "#########################################"
sudo apt-get update
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
echo "#########################################"

echo " "

echo "#########################################"
echo "#          Installing Boto3             #"
echo "#########################################"
sudo apt-get update
sudo pip3 install boto3
echo "#########################################"

echo " "

echo "#########################################"
echo "#          Installing Slack             #"
echo "#########################################"
sudo apt-get update
sudo snap install slack
echo "#########################################"

echo " "

echo "#########################################"
echo "#            Version Check              #"
echo "#########################################"
echo "VS Code Version"
code --version
echo " "
echo "#########################################"
echo "GIT Version"
git --version
echo " "
echo "#########################################"
echo "Ansible Version"
ansible --version
echo " "
echo "#########################################"
echo "Terraform Version"
terraform --version
echo " "
echo "#########################################"
echo "Packer Version"
packer --version
echo " "
echo "#########################################"
echo "Python3 Version"
python3 --version
echo " "
echo "#########################################"
echo "AWS CLI Version"
aws --version
echo " "
echo "#########################################"
echo "Boto3 Version"
pip show boto3
echo " "
echo "#########################################"
echo "Wine Version"
wine64 --version
