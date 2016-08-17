#!/bin/bash

check=$( csrutil status )

if [ "$check" = "System Integrity Protection status: enabled." ];
then
	echo "<result>Enabled</result>"
else
	echo "<result>$check</result>"
fi
