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

echo "Copying all extracted tars to /usr/share/icons"
cp -r Bibata-*-* /usr/share/icons

read -p "You now have all Bibata cursors, please change under elementary tweaks"

