#!/bin/bash

# EA to check for Apple Remote Events status

check=$( systemsetup -getremoteappleevents )

if [ "$check" = "Remote Apple Events: Off" ];
then
	echo "<result>Disabled</result>"
else
	echo "<result>Enabled</result>"
fi
