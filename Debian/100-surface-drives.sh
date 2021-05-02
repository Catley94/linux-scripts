#!/bin/bash
# Link: https://github.com/linux-surface/linux-surface

#Before adding the repository itself, you should import the keys we use to sign the packages. To do this, run the following two commands:
wget -qO - https://raw.githubusercontent.com/linux-surface/linux-surface/master/pkg/keys/surface.asc \ | sudo apt-key add -

After this, you can add the repository itself by running:
echo "deb [arch=amd64] https://pkg.surfacelinux.com/debian release main" | sudo tee /etc/apt/sources.list.d/linux-surface.list

#Then update your local package lists:
sudo apt update

echo "Installing linux-headers-surface, linux-image-surface, surface-ipts-firmware, libwacom-surface and iptsd"
sudo apt install linux-headers-surface linux-image-surface surface-ipts-firmware libwacom-surface iptsd

#enable the iptsd
echo "Enabling iptsd at startup"
sudo systemctl enable iptsd.service


#Updating grub
sudo update-grub

read -p "Press enter to Reboot..."
sudo reboot
