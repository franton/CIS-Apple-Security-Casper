#!/bin/bash

# Log out all users from iCloud

ls /Users/ | while read USERS ;
do
	if [ -d /Users/$USERS/Library/Preferences/ ];
	then  
		rm $USERS/Library/Preferences/MobileMeAccounts.plist
	fi
done

killall cfprefsd