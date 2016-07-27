#!/bin/bash

check=$( /usr/libexec/ApplicationFirewall/socketfilterfw --getglobalstate )

if [ "$check" = "Firewall is disabled. (State = 0)" ];
then
    echo "<result>Disabled</result>"
else
    echo "<result>Enabled</result>"
fi
