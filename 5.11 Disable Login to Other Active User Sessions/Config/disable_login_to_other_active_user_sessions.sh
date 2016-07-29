#!/bin/bash
# CIS 5.11 - Curtesy of Owen Pragel (owen dot pragel @ 74bit dot com)

sed -i.bak 's/group=admin,wheel fail_safe/group=wheel fail_safe/g' /etc/pam.d/screensaver
