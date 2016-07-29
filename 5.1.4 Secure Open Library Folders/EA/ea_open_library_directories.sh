#!/bin/bash
# CIS 5.1.4
worldWritableLibraryFolders=$(find /Library -type d -perm -2 -ls | grep -v Caches)
if [ "$worldWritableLibraryFolders" == "" ]; then
    eaResult="F"
else
    eaResult="T"
fi
printf "<result>%s</result>" "$eaResult"