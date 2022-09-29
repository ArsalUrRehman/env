#!/bin/bash

echo "#################################################################################"
echo "Dependencies"
echo "#################################################################################"
sudo apt install upzip
sudo apt install 
sudo apt install curl
sudo apt install wget
sudo apt-get install software-properties-common
echo "#################################################################################" 



#echo "################################################################################"
#echo "Installing Virtual Box"
#echo "################################################################################"
#sudo apt-get update
#sudo apt-get install software–properties–common
#sudo apt-get update
#sudo apt install virtualbox-6.1 -y
#sudo apt install virtualbox-ext-pack -y
#echo "#################################################################################"


echo "##################################################################################"
echo "Installing Postman"
echo "##################################################################################"
sudo apt-get update
sudo snap install postman -y
echo "##################################################################################"



echo "##################################################################################"
echo"Installing Anydesk"
echo "##################################################################################"
sudo apt-get update
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sudo apt-get update
sudo apt install anydesk -y
echo "##################################################################################"



echo "##################################################################################"
echo "Installing VS Code"
echo "##################################################################################"
sudo apt-get update
sudo snap install --classic code -y
echo "##################################################################################"



echo "##################################################################################"
echo "Installing git"
echo "##################################################################################"
sudo apt-get update
sudo apt-get install git -y
echo "##################################################################################"


echo "##################################################################################"
echo "Installing Ansible"
echo "##################################################################################"
sudo apt-get update
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
echo "##################################################################################"



echo "##################################################################################"
echo "Installing Terraform v0.13.6"
echo "##################################################################################"
sudo apt-get update
wget https://releases.hashicorp.com/terraform/0.13.6/terraform_0.13.6_linux_amd64.zip
unzip terraform_0.13.6_linux_amd64.zip
chmod +x terraform
sudo mv terraform /usr/local/bin/
echo "##################################################################################"



echo "##################################################################################"
echo "Installing Packer"
echo "##################################################################################"
sudo apt-get update
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install packer -y
echo "##################################################################################"



echo "##################################################################################"
echo "Installing Python3"
echo "##################################################################################"
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3 -y
echo "##################################################################################"



echo "##################################################################################"
echo "Installing PIP"
echo "##################################################################################"
sudo apt-get update
sudo apt-get -y install python3-pip
echo "##################################################################################"



echo "##################################################################################"
echo "Installing AWS CLI"
echo "##################################################################################"
sudo apt-get update
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
echo "##################################################################################"



echo "##################################################################################"
echo "Installing Boto3"
echo "##################################################################################"
sudo apt-get update
sudo pip3 install boto3 -y
echo "##################################################################################"


echo "Version Check"
postman --version
anydesk --version
code --version
git --version
ansible --version
terraform --version
packer --version
python3 --version
aws --version
pip show boto3
