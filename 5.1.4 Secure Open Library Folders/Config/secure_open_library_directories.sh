#!/bin/sh
# CIS 5.1.4 - Curtesy of Owen Pragel (owen dot pragel @ 74bit dot com)

find /Library -type d -exec chmod -R o-w {} +
