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

echo "You have this archiso version installed   :"$archisoVersion

		count=0

		for name in $(ls -d */); do
			count=$[count+1]
			cd $name
			echo $count
			echo "Entering directory : "$name
			echo "Changing current archiso version in archiso.readme"
			sudo sed -i "s/archiso-version=archiso 50.1-1/archiso-version=archiso 50.1-1/" archiso.readme

			cd installation-scripts
			echo "Changing current archiso version in 30 and 40 build scripts"
			sudo sed -i 's/archisoRequiredVersion="archiso 50.1-1"/archisoRequiredVersion="archiso 50.1-1"/g' 30-build-the-iso-the-first-time.sh
			sudo sed -i 's/archisoRequiredVersion="archiso 50.1-1"/archisoRequiredVersion="archiso 50.1-1"/g' 40-build-the-iso-local-again.sh
			cd ..
			cd ..
		done

		echo "#############################################################################################"
		echo "###################                 Script finished                      ####################"
		echo "#############################################################################################"


