#!/bin/bash

# EA to check for Automatic Logins

check=$( defaults read /Library/Preferences/com.apple.loginwindow.plist | grep autoLoginUser' )

if [ "$check" != "" ];
then
	echo "<result>Enabled</result>"
else
	echo "<result>Disabled</result>"
fi
