#!/bin/bash

# Script to set sudo timeout to zero.
# Work by Allen Golbig, all credit to him.

cp /etc/sudoers /tmp/sudoers.bak
timestamp=$(grep timestamp_timeout /tmp/sudoers.bak | cut -d '=' -f 2)

	if [ "$timestamp" = "" ]; then
		echo "Defaults timestamp_timeout=0" >> /tmp/sudoers.bak
		visudo -csf /tmp/sudoers.bak
		if [ $? -eq 0 ]; then
		        cp /tmp/sudoers.bak /etc/sudoers
		fi
	fi

	if [ "$timestamp" != "" ]; then
		sed -i "" s/"$timestamp"/0/ /tmp/sudoers.bak
		visudo -csf /tmp/sudoers.bak
		if [ $? -eq 0 ]; then
			cp /tmp/sudoers.bak /etc/sudoers
		fi
	fi

rm /tmp/sudoers.bak