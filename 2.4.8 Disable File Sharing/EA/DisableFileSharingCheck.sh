#!/bin/bash

# EA to check for File Sharing status

check=$( launchctl list | grep AppleFileServer | awk '{ print $3 }' )

if [ "$check" = "com.apple.AppleFileServer" ];
then
	echo "<result>Enabled</result>"
else
	echo "<result>Disabled</result>"
fi
