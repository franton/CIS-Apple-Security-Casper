#!/bin/bash

read=$( defaults read com.apple.systemuiserver.plist menuExtras | grep Bluetooth.menu )
check=$( echo $read | cut -d '"' -f 2 | sed 's/;$//' )

if [ "$check" = "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" ];
then
	echo "<result>Enabled</result>"
else
	echo "<result>Disabled</result>"
fi