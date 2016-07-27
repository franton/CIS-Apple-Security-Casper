#!/bin/bash -x

check=$( cupsctl | grep "_share_printers" )
i=$((${#check}-1))
check=$( echo "${check:$i:1}" )

if [ "$check" = "0" ];
then
	echo "<result>Disabled</result>"
else
	echo "<result>Enabled</result>"
fi
