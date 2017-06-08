#!/bin/bash

# EA to check if NTP service has been restricted to loopback interface

check=$( cat /etc/ntp-restrict.conf | grep -c "restrict lo" )

if [ "$check" = "0" ];
then
   echo "<result>Not Configured</result>"
else
   echo "<result>Configured</result>"
fi
