#!/bin/bash
echo "==== Docker Installation"
echo "==== Uninstall older Docker if any"
sudo apt-get remove docker docker-engine docker.io containerd runc docker*

echo "==== Set up the repository"
echo "==== Installing required packages"
sudo apt-get update -y
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

echo "==== Adding Docker's official GPG Key"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "==== Verifying key"
sudo apt-key fingerprint 0EBFCD88

echo "==== Setup stable repository"
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

echo "==== Install Docker Engine and docker-compose"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose

echo "==== Enable docker service"
sudo systemctl enable docker
sudo systemctl start docker

echo "==== Add current user to docker group"
sudo usermod -aG docker $USER

echo "==== Verify docker Installation"
sudo docker run hello-world
