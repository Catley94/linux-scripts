#!/bin/bash

DM="dm"

echo "Installing XORG server, apps, xinit and xterm..."
sudo pacman -S xorg-server xorg-apps xorg-xinit xterm
echo "Installed"
#read -p "Please choose a Display Manager..." DM
#if "$DM" == "lightdm"
#then
	echo "Installing LightDM, Greeter and Settings"
	sudo pacman -S lightdm
	sudo pacman -S lightdm-gtk-greeter lightdm-gtk-greeter-settings
	echo "Installed"
#elif $DM == "sddm"
#then
#	echo "Installing sddm"
#	sudo pacman -S sddm	
#	echo "Installed"
#else
#	echo "I don't understand what Display Manager that is, please try again"
#fi

#BUDGIE
echo "Installing Budgie"
sudo pacman -S budgie-desktop
sudo pacman -S budgie-extras
sudo pacman -S nautilus-image-converter

#CINNAMON
#echo "Installing Cinnamon"
#sudo pacman -S cinnamon
#sudo pacman -S nemo-fileroller
#sudo pacman -S gnome-terminal

#DEEPIN
#echo "Installing Deepin"
#sudo pacman -S deepin
#sudo pacman -S deepin-extra

#GNOME
#echo "Installing Gnome"
#sudo pacman -S gnome
#sudo pacman -S gnome-extra
#sudo pacman -S nautilus-image-converter

#MATE
#echo "Installing Mate"
#sudo pacman -S mate
#sudo pacman -S mate-extra

#PLASMA
#echo "Installing Plasma"
#sudo pacman -S plasma-meta
#sudo pacman -S packagekit-qt5
#sudo pacman -S kde-applications-meta
#sudo pacman -S partitionmanager
#sudo pacman -S ktorrent
#sudo pacman -S kdeconnect

#UKUI
#echo "Installing UKUI"
#sudo pacman -S ukui
#sudo pacman -S qt5-quickcontrols
#sudo pacman -S redshift gnome-screenshot mate-desktop mate-control-center mate-terminal mate-system-monitor

#XFCE
#echo "Installing XFCE"
#sudo pacman -S xfce4
#sudo pacman -S xfce4-goodies

