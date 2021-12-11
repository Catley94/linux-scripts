#!/bin/bash

#######################################
#______________REPOS__________________#
#######################################

echo "Adding NodeSource PPA for Nodejs"
curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash -

#echo "Adding shiftkey PPA for Github Desktop"
#wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo tee /etc/apt/trusted.gpg.d/shiftkey-desktop.asc > /dev/null
#sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list'

#echo "Installing GPG Key and adding repo"
#curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
#echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

echo "Updating packages"
sudo apt update

#######################################
#______________INSTALL________________#
#######################################

#or_install() {
#	if pacman -Qi $1 &> /dev/null; then
#		tput setaf 2
# 		echo "###############################################################################"
#  		echo "################## The package "$1" is already installed"
#     	echo "###############################################################################"
#      	echo
#		tput sgr0
#	else
#    	tput setaf 3
#    	echo "###############################################################################"
#    	echo "##################  Installing package "  $1
#    	echo "###############################################################################"
#    	echo
#    	tput sgr0
#    	sudo pacman -S --noconfirm --needed $1
#    fi
#}

###################################
#___________ELEMENTARYOS__________#
###################################



#APPS CONSIDERED:
#guake
#firefox
#simplescreenrecorder
#variety
#atom

ElementaryOSList=(
variety
krita
#virtualbox
node
npm
git
#github-desktop
#spotify-client
synaptic
gnome-boxes
simplescreenrecorder
)

for name in "${ElementaryOSList[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	sudo apt-get install -y $name
done

