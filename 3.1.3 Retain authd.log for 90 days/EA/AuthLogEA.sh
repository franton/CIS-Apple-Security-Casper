#!/bin/bash

# EA to check for the number of days authd.log files are retained.

check=$( grep -i ttl /etc/asl/com.apple.authd | awk -F'ttl=' '{print $2}' )

if [ "$check" = "" ];
then
   echo "<result>Missing</result>"
else
   echo "<result>$result</result>"
fi
