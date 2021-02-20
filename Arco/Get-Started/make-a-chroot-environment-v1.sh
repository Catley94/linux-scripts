#!/bin/bash
set -e
##################################################################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "################################################################"
echo "#####                        chroot                       ######"
echo "################################################################"

#https://wiki.archlinux.org/index.php/DeveloperWiki:Building_in_a_Clean_Chroot

sudo pacman -S devtools --needed --noconfirm

echo "chroot for arcolinux packages"

[ -d $HOME"/Documents/chroot-arcolinux" ] || mkdir -p $HOME"/Documents/chroot-arcolinux"
CHROOT=$HOME/Documents/chroot-arcolinux
mkarchroot $CHROOT/root base-devel
arch-nspawn $CHROOT/root pacman -Syu

echo "chroot for all but arcolinux packages"

[ -d $HOME"/Documents/chroot" ] || mkdir -p $HOME"/Documents/chroot"
CHROOT=$HOME/Documents/chroot
mkarchroot $CHROOT/root base-devel
arch-nspawn $CHROOT/root pacman -Syu

echo "################################################################"
echo "###################        Done           ######################"
echo "################################################################"
