#!/bin/bash 

echo "Update apt-get package"
apt-get update

echo "Installing docker..."
apt install docker.io -y

echo "Install aws-cli..."
apt  install awscli -y