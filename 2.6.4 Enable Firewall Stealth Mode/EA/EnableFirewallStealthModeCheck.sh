#!/bin/bash

# EA to check for Firewall Stealth status

check=$( /usr/libexec/ApplicationFirewall/socketfilterfw --getstealthmode )

if [ "$check" = "Stealth mode enabled" ];
then
	echo "<result>Enabled</result>"
else
	echo "<result>Disabled</result>"
fi
