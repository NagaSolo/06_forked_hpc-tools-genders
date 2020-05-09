#!/bin/bash

# this program is for updating mac address for now !!

#node1_mac_old = ./nodeatrr -f genders -v node1 mac
#node1_mac_new = aa:bb:cc:dd:ee:ff

#hostName = getUserInput()
#newAttr = getUserInput()
#oldAttr = ./nodeatrr -f genders -v hostname mac

## TODO function for reading file in line

# when invoking this update script, genders file must be passed on as the first parameter
# e.g 'sh update.sh genders'
gendersFile="$1"
gendersFileTemp="$(cat $gendersFile)"
echo "$gendersFileTemp"

sleep 1

read -p 'Specify host to update: ' hostName
sleep 1
echo "${hostName} Mac attribute is to be changed"

sleep 1

oldMacAttr="$(./nodeattr -f genders -v ${hostName} mac)"
sleep 1
echo "${oldMacAttr} is the old Mac address of ${hostName}"

sleep 1

read -p 'Specify new Mac address: ' newMacAttr
sleep 1
echo "${newMacAttr} is ${hostName} new Mac address"

sleep 1

newHostAttr=${gendersFileTemp//${oldMacAttr}/${newMacAttr}}
echo "${newHostAttr}" > newConfig
