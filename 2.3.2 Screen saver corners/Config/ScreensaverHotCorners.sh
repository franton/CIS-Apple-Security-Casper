#!/bin/bash

user=$( python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");' )

tlcorner=$( defaults read /Users/$user/Library/Preferences/com.apple.dock wvous-tl-corner )
trcorner=$( defaults read /Users/$user/Library/Preferences/com.apple.dock wvous-tr-corner )
blcorner=$( defaults read /Users/$user/Library/Preferences/com.apple.dock wvous-bl-corner )
brcorner=$( defaults read /Users/$user/Library/Preferences/com.apple.dock wvous-br-corner )

if [ "$tlcorner" = "6" ];
then
	defaults write /Users/$user/Library/Preferences/com.apple.dock wvous-tl-corner -int 1
fi

if [ "$trcorner" = "6" ];
then
	defaults write /Users/$user/Library/Preferences/com.apple.dock wvous-tr-corner -int 1	
fi

if [ "$blcorner" = "6" ];
then
	defaults write /Users/$user/Library/Preferences/com.apple.dock wvous-bl-corner -int 1
fi

if [ "$brcorner" = "6" ];
then
	defaults write /Users/$user/Library/Preferences/com.apple.dock wvous-br-corner -int 1
fi