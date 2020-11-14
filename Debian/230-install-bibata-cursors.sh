#!/bin/bash

#######################################
#______________INSTALL________________#
#######################################

#/usr/share/icons

#Changing directory 
cd ../Themes/Cursors

echo "Unzipping all tars"
tar -xzvf Bibata-Modern-Amber.tar.gz
tar -xzvf Bibata-Modern-Classic.tar.gz
tar -xzvf Bibata-Modern-Ice.tar.gz
tar -xzvf Bibata-Original-Amber.tar.gz
tar -xzvf Bibata-Original-Classic.tar.gz
tar -xzvf Bibata-Original-Ice.tar.gz

#echo "Copying all extracted tars to /usr/share/icons"
#sudo cp -r Bibata-*-* /usr/share/icons

echo "Copy all extracted tars to ~/.icons/"
cp -r Bibata-Modern-Amber/ ~/.icons/Bibata-Modern-Amber/
cp -r Bibata-Modern-Classic/ ~/.icons/Bibata-Modern-Classic/
cp -r Bibata-Modern-Ice/ ~/.icons/Bibata-Modern-Ice/
cp -r Bibata-Original-Amber/ ~/.icons/Bibata-Original-Amber/
cp -r Bibata-Original-Classic/ ~/.icons/Bibata-Original-Classic/
cp -r Bibata-Original-Ice/ ~/.icons/Bibata-Original-Ice/

gsettings set org.gnome.desktop.interface cursor-theme "$THEMENAME"

read -p "You now have all Bibata cursors, please change under elementary tweaks"
