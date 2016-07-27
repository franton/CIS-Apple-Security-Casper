#!/bin/bash

# EA to check for Remote Login status

check=$( systemsetup -getremotelogin )

if [ "$check" = "Remote Login: Off" ];
then
	echo "<result>Disabled</result>"
else
	echo "<result>Enabled</result>"
fi
