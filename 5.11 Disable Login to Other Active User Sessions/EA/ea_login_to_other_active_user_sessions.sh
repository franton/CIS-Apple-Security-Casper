#!/bin/bash

# CIS 5.11 - Curtesy of Owen Pragel (owen dot pragel @ 74bit dot com)
# Minor modifications by Richard Purves (franton)
# Note: i'm not entirely happy with this and the fix. Currently investigating authorizationdb method.

screensaverSecurity=$(grep -i "group=admin,wheel fail_safe" /etc/pam.d/screensaver)

if [ "$screensaverSecurity" == "" ]; then
    eaResult="Disabled"
else
    eaResult="Enabled"
fi

echo "<result>$eaResult</result>"
