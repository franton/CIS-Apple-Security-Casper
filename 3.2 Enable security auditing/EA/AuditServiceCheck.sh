#!/bin/bash

# EA to check for security auditing service

check=$( launchctl list | grep auditd | awk '{ print $3 }' )

if [ "$check" = "com.apple.auditd" ];
then
	echo "<result>Enabled</result>"
else
	echo "<result>Disabled</result>"
fi
