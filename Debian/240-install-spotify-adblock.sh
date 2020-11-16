#!/bin/bash

#######################################
#______________INSTALL________________#
#######################################

echo "Installing dependancies"
sudo apt install -y x11-utils pulseaudio-utils libnotify-bin xdotool vlc

echo "cloning git"
git clone https://github.com/SecUpwN/Spotify-AdKiller.git ~/spotify-adblock
cd ~/spotify-adblock
chmod +x install.sh
./install.sh

