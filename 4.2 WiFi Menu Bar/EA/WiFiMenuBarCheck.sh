#!/bin/bash

read=$( defaults read com.apple.systemuiserver.plist menuExtras | grep AirPort.menu )
check=$( echo $read | cut -d '"' -f 2 | sed 's/;$//' )

if [ "$check" = "/System/Library/CoreServices/Menu Extras/AirPort.menu" ];
then
	echo "<result>Enabled</result>"
else
	echo "<result>Disabled</result>"
fi