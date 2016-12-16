#!/bin/bash

# EA to check for the number of apps present in the Application Firewall

check=$( /usr/libexec/ApplicationFirewall/socketfilterfw --listapps | grep 'ALF: total number of apps' | awk '{ print $7 }' )

if [ "$check" = "" ];
then
    echo "<result>0</result>"
else
    echo "<result>$check</result>"
fi