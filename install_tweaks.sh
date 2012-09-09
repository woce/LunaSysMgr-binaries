#!/bin/bash

TWEAKS_PATH=`ls ./tweaks/`
INSTALL_PATH=file:///media/cryptofs/apps/usr/palm/services/org.webosinternals.tweaks.prefs/preferences/

for file in $TWEAKS_PATH
do
	echo "Installing $file ..."
	novacom put $INSTALL_PATH/$file < ./tweaks/$file
done


