#!/bin/bash -eux

# Install docker-ce dependencies.
apt update && apt-get upgrade
apt install python-pip python-dev apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common

# Add Docker’s official GPG key.
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

# Add apt repo with docker ce.
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

# Install docker
apt update 
apt install docker-ce docker-ce-cli containerd.io

# Also install nginx
apt install nginx
