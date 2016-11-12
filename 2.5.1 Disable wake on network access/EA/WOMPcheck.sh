#!/bin/bash

# EA to check for "Wake on Network Access"

check=$( pmset -a -g | grep womp | awk '{ print $2 }' )

if [ "$check" = "0" ];
then
	echo "<result>Disabled</result>"
else
	echo "<result>Enabled</result>"
fi