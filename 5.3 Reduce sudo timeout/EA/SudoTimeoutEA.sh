#!/bin/bash

# EA to check sudo timeout

check=$( grep timestamp_timeout /etc/sudoers | cut -d '=' -f 2 )

if [ "$check" != "0" ];
then
	echo "Incorrect"
else
	echo "Configured"
fi