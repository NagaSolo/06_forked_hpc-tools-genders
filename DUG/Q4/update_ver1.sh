#!/bin/bash

# this program is for updating mac address for now !!

#node1_mac_old = ./nodeatrr -f genders -v node1 mac
#node1_mac_new = aa:bb:cc:dd:ee:ff

#hostName = getUserInput()
#newAttr = getUserInput()
#oldAttr = ./nodeatrr -f genders -v hostname mac

read -p 'Specify host: ' hostName
echo ${hostName}

#fullAttr="$(./nodeattr -f genders -l ${hostName})"
#echo ${fullAttr}

oldMacAttr="$(./nodeattr -f genders -v ${hostName} mac)"
echo ${oldMacAttr}
oldMacAttrStr="$(grep ${oldMacAttr} genders)"
echo ${oldMacAttrStr}

read -p 'Specify new mac address: ' newMacAttr
echo ${newMacAttr}

#sed -i 's/${oldMacAttrStr}/${newMacAttr}/g' genders
#"{$oldMacAttrStr//$oldMacAttr/$newMacAttr}" > output.txt
#echo ${oldMacAttrStr} | tr ${oldMacAttr} ${newMacAttr} > output.txt
#echo ${oldMacAttr} | sed -r 's/${oldMacAttr}/$(newMacAttr}/g' > output
newMacAttrStr=${oldMacAttrStr//${oldMacAttr}/${newMacAttr}}
echo ${newMacAttrStr}

#more genders
