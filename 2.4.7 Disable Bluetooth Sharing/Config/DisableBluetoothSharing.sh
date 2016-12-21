#!/bin/bash

user=$( python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");' )
uuid=$( ioreg -rd1 -c IOPlatformExpertDevice | grep UUID | awk '{ print $3 }' | sed -e s/\"//g )

defaults write /Users/$user/Library/Preferences/ByHost/com.apple.Bluetooth.$uuid.plist PrefKeyServicesEnabled -int 0