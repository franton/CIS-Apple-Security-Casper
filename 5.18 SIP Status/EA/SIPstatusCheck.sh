#!/bin/bash

check=$( csrutil status )

if [ "$check" = "System Integrity Protection status: enabled." ];
then
	echo "<result>Enabled</false>"
else
	echo "<result>$check</false>"
fi