#!/bin/bash

echo "Downloading Lastpass..."
wget https://download.cloud.lastpass.com/linux/lplinux.tar.bz2

tar -xf lplinux.tar.bz2

echo "Installing lastpass"
./install_lastpass.sh
