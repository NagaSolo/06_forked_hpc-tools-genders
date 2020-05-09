#!/bin/bash

# this program is for updating mac address for now !!

#node1_mac_old = ./nodeatrr -f genders -v node1 mac
#node1_mac_new = aa:bb:cc:dd:ee:ff

#hostName = getUserInput()
#newAttr = getUserInput()
#oldAttr = ./nodeatrr -f genders -v hostname mac

## TODO function for reading file in line

# when invoking this update script, genders file must be passed on as the first parameter
gendersFile="$1"
gendersFileTemp="$(cat $gendersFile)"
echo "$gendersFileTemp"
#while IFS= read -r line
#do
#    echo "$line"
#done < "$gendersFile"
#echo "$gendersFile"

read -p 'Specify host: ' hostName
echo "${hostName} mac attribute is to be changed"

oldMacAttr="$(./nodeattr -f genders -v ${hostName} mac)"
echo "${oldMacAttr} is the old mac value of ${hostName}"

read -p 'Specify new mac address: ' newMacAttr
echo ${newMacAttr}

newHostAttr=${gendersFileTemp//${oldMacAttr}/${newMacAttr}}
echo ${newHostAttr} > newConfig
