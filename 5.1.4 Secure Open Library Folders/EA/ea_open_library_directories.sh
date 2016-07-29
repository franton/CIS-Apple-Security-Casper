#!/bin/bash
# CIS 5.1.4 - Curtesy of Owen Pragel (owen dot pragel @ 74bit dot com)
# Minor modifications by Richard Purves (franton)

worldWritableLibraryFolders=$(find /Library -type d -perm -2 -ls | grep -v Caches)

if [ "$worldWritableLibraryFolders" == "" ]; then
    eaResult="Secure"
else
    eaResult="Insecure"
fi

echo "<result>$eaResult</result>"
