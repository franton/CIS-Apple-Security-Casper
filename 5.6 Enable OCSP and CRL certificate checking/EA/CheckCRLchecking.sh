#!/bin/bash

user=$( python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");' )
check=$( defaults read /Users/$user/Library/Preferences/com.apple.security.revocation CRLStyle 2>&1 )

if [ "$check" = "RequireIfPresent" ];
then
	echo "<result>Enabled</result>"
else
	echo "<result>Disabled</result>"
fi