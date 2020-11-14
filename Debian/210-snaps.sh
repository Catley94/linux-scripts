#!/bin/bash

#######################################
#______________PREREQS__________________#
#######################################

echo "Installing snapd..."
sudo apt install -y snapd

echo "Installing snap store..."
sudo snap install snap-store


#######################################
#______________INSTALL________________#
#######################################

sudo snap install code --classic


