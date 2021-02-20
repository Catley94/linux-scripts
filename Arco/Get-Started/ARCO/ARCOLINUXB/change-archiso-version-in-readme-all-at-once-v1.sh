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
echo "Let us change the archiso version in all archiso.readme files."

archisoVersion=$(sudo pacman -Q archiso)

		count=0

		for name in $(ls -d arco*/); do
			count=$[count+1]
			cd $name
			echo
			echo "Saving current archiso version to readme"
			sudo sed -i "s/\(^archiso-version=\).*/\1$archisoVersion/" archiso.readme
			cd ..
		done

		echo "#############################################################################################"
		echo "###################                 Script finished                      ####################"
		echo "#############################################################################################"


