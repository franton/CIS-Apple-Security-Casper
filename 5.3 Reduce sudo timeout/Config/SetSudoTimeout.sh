#!/bin/bash

# Script to set sudo timeout to zero.
# Work by Allen Golbig, all credit to him. Some simplification by me.

timestamp=$( grep timestamp_timeout /etc/sudoers | cut -d '=' -f 2 )

if [ "$timestamp" = "" ];
then
	echo "Defaults timestamp_timeout=0" >> /tmp/sudoers.bak
	visudo -csf /tmp/sudoers.bak
	if [ $? -eq 0 ]; then
		cp /tmp/sudoers.bak /etc/sudoers
	fi
fi

if [ "$timestamp" != 0 ];
then
	sed -i "" s/"$timestamp"/0/ /etc/sudoers
fi