#!/bin/bash
# Link: https://github.com/linux-surface/linux-surface

echo "Checking for any updates to packages"
sudo pacman -Syyu --noconfirm
yay -Syu --noconfirm

#You should install the proprietary firmware package of your distribution. This is usually called linux-firmware and is required for some of the functionality provided by this kernel (e.g. the touchscreen).

sudo pacman -S --noconfirm --needed linux-firmware

#You should install CPU microcode firmware for the latest CPU updates.
#Intel processor
sudo pacman -S --noconfirm --needed intel-ucode

#You may want to look at the additional Utilities and Packages.  Install libwacom-surface for better stylus and touch support e.g. in Gnome

sudo pacman -S --noconfirm --needed libwacom-surface

#Windows stores the hardware clock as localtime, whereas Linux and other OS-es typically use UTC. When dual-booting this can cause the time to skew. The easiest way to fix this is by configuring Linux to use localtime:

sudo timedatectl set-local-rtc 1
sudo hwclock --systohc --localtime

#Make sure that the iptsd service is running
systemctl start iptsd.service
