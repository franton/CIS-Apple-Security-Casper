#!/bin/bash

# EA to check login keychain lock on sleep

user=$( python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");' )

check=$( security show-keychain-info /Users/$user/Library/Keychains/login.keychain 2>&1 | grep -c "lock-on-sleep"  )

if [ "$check" -gt 0 ];
then
	echo "Incorrect"
else
	echo "Configured"
fi
