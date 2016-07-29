#!/bin/bash

user=$( python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");' )
read=$( defaults read /Users/$user/Library/Preferences/com.apple.systemuiserver.plist menuExtras | grep Bluetooth.menu )
check=$( echo $read | cut -d '"' -f 2 | sed 's/;$//' )

if [ "$check" = "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" ];
then
	echo "<result>Enabled</result>"
else
	echo "<result>Disabled</result>"
fi