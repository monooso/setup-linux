#! /bin/bash

# .........................................................
# Install Docker
# .........................................................
sudo apt-get install \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg-agent \
     software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -


echo "What is the codename of your Ubuntu release (e.g. bionic)?"
read UBUNTU_RELEASE

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $UBUNTU_RELEASE stable"
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io

# Tell Docker to boot on system start
sudo systemctl enable docker

# You will need to log out for this to take effect
sudo usermod -aG docker $USER
echo "👍 Installed Docker. You'll need to reboot before using it."
