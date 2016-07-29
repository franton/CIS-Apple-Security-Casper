#!/bin/bash
screensaverSecurity=$(grep -i "group=admin,wheel fail_safe" /etc/pam.d/screensaver)
if [ "$screensaverSecurity" == "" ]; then
    eaResult="F"
else
    eaResult="T"
fi
printf "<result>%s</result>" "$eaResult"