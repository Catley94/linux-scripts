#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 		: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "what file to copy to calamares/modules"
read FIND

dirs=$(echo */)
echo $dirs
for dir in $dirs
do
	cp $FIND $dir"calamares/modules/"
done
