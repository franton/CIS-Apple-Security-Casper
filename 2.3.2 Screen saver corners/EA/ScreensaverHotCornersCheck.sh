#!/bin/bash

user=$( python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");' )

tlcorner=$( defaults read /Users/$user/Library/Preferences/com.apple.dock wvous-tl-corner )
trcorner=$( defaults read /Users/$user/Library/Preferences/com.apple.dock wvous-tr-corner )
blcorner=$( defaults read /Users/$user/Library/Preferences/com.apple.dock wvous-bl-corner )
brcorner=$( defaults read /Users/$user/Library/Preferences/com.apple.dock wvous-br-corner )

if [ "$tlcorner" != "6" ] && [ "$trcorner" != "6" ] && [ "$blcorner" != "6" ] && [ "$brcorner" != "6" ];
then
	echo "<result>Disabled</result>"
else
	echo "<result>Enabled</result>
fi