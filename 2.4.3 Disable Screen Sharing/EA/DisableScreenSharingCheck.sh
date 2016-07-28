#!/bin/bash

# EA to check for Screen Sharing status. Must be run as root, which EA's normally are.

check=$( launchctl list | grep com.apple.screensharing | awk '{ print $3 }' )

if [ "$check" = "com.apple.screensharing" ];
then
	echo "<result>Enabled</result>"
else
	echo "<result>Disabled</result>"
fi