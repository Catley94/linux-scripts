#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "This updates the existing githubs"
echo "Fill the array with the original folders first"

# use ls -d */ > list to get the list of the created githubs and copy/paste in

mkdir packages
cd packages

#wget -xnH -r https://bike.seedhost.eu/arcolinux/packages/
wget --recursive --no-parent -x -nH --cut-dirs=2 -R "index.html*" https://bike.seedhost.eu/arcolinux/packages/
