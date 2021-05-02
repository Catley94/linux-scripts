#!/bin/bash

#######################################
#______________PREREQS________________#
#######################################

echo "Adding software-properties-common"
sudo apt install -y software-properties-common

#######################################
#______________REPOS__________________#
#######################################

echo "Adding philip.scott/elementary-tweaks PPA"
sudo add-apt-repository -y ppa:philip.scott/elementary-tweaks


#######################################
#______________INSTALL________________#
#######################################

echo "Installing elementary-tweaks"
sudo apt install -y elementary-tweaks
