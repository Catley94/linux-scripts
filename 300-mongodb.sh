#!/bin/bash

#Importing keys
gpg --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 --recv 27EDEAF22F3ABCEB50DB9A125CC908FDB71E12C2

#Updating repository
sudo pacman -Syy

yay -S --noconfirm mongodb-bin

#enabling it on startup
systemctl enable --now mongodb
systemctl start --now mongodb
