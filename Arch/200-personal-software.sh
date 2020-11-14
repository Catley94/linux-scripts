#!/bin/bash
#set -e
#FORKED FROM ARCOLINUX GITHUB REPO
###############################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxb.com
# Website	:	https://www.arcolinuxiso.com
# Website	:	https://www.arcolinuxforum.com
###############################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###############################################################################


###############################################################################
#
#   DECLARATION OF FUNCTIONS
#
###############################################################################


or_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "###############################################################################"
  		echo "################## The package "$1" is already installed"
      	echo "###############################################################################"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "###############################################################################"
    	echo "##################  Installing package "  $1
    	echo "###############################################################################"
    	echo
    	tput sgr0
    	sudo pacman -S --noconfirm --needed $1
    fi
}

aur_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "###############################################################################"
  		echo "################## The package "$1" is already installed"
      	echo "###############################################################################"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "###############################################################################"
    	echo "##################  Installing package "  $1
    	echo "###############################################################################"
    	echo
    	tput sgr0
    	yay -S $1
    fi
}

###############################################################################
#
#   Official Repos
#
###############################################################################

#plank
#arcolinux-meta-fun	
ORList=(
variety
atom
code
krita
htop
virtualbox
nodejs
npm
yay
firefox
gparted
catfish
baobab
guake
simplescreenrecorder
wps-office
ttf-wps-fonts
wps-office-mime
bashtop
gvfs
cron
thunar-volman
)

for name in "${ORList[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	or_install $name
done

###############################################################################
#
#   AUR
#
###############################################################################


#yay -S lightdm-slick-greeter
#cava
AURList=(
pamac-aur
postman-bin
trello
github-desktop-bin
spotify-adblock-git
timeshift
hyper
lastpass
gnome-disk-utility
)

for name in "${AURList[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	aur_install $name
done
