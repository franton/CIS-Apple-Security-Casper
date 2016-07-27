#!/bin/bash

# Disable Screen Sharing

# Check for the Casper casperscreensharing user

check=$( dscl . -list /Users | grep casperscreensharing )

if [ "$check" != "" ];
then
	exit 0
fi

# Kill the service

launchctl unload -w /System/Library/LaunchDaemons/com.apple.screensharing.plist 