#!/bin/bash

# EA to check for Remote Management status

check=$( pgrep -l ARDAgent | awk '{ print $2 }' )

if [ "$check" = "ARDAgent" ];
then
	echo "<result>Enabled</result>"
else
	echo "<result>Disabled</result>"
fi
