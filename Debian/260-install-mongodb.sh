#!/bin/bash

echo "Importing the public key used by the package management system"
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -

echo "Creating the /etc/apt/sources.list.d/mongodb-org-4.4.list file for Ubuntu 18.04 (Bionic):"
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list

echo "Updating packages..."
sudo apt update

echo "Installing Mongodb..."
sudo apt-get install -y mongodb-org
