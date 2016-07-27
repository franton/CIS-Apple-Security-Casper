#!/bin/bash

check=$( /usr/sbin/firmwarepasswd -mode )

if [ "$check" = "Mode: none" ]; then
	echo "<result>Disabled</result>"
elif [ "$check" = "Mode: command" ]; then
	echo "<result>Command</result>"
elif [ "$check" = "Mode: full" ]; then
	echo "<result>Full</result>"
fi