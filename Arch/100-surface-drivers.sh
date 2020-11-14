#!/bin/bash
# Link: https://github.com/linux-surface/linux-surface

#Before adding this repository, you should first add the key used to sign the packages in it. You can do this by running the following commands:
wget -qO - https://raw.githubusercontent.com/linux-surface/linux-surface/master/pkg/keys/surface.asc \ | sudo pacman-key --add -

#It is recommended that you now fingerprint it by running
sudo pacman-key --finger 56C464BAAC421453

#and in a final step, you have to locally sign the key to trust it via
sudo pacman-key --lsign-key 56C464BAAC421453

#You can now add the repository by editing /etc/pacman.conf and adding at the end of the file.
read -p "Copy the next line, press enter..."
read -p "[linux-surface]
Server = https://pkg.surfacelinux.com/arch/"
sudo nano /etc/pacman.conf

echo "Checking for any updates to packages"
sudo pacman -Syyu --noconfirm
yay -Syu --noconfirm

echo "Installing linux-surface-headers linux-surface surface-ipts-firmware iptsd"
sudo pacman -S --noconfirm --needed linux-surface-headers linux-surface surface-ipts-firmware iptsd

#enable the iptsd
echo "Enabling iptsd at startup"
sudo systemctl enable iptsd.service

echo "Instaling update-grub"
yay -S --noconfirm update-grub

#Updating grub
sudo update-grub

read -p "Press enter to Reboot..."
sudo reboot
