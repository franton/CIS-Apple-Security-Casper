#!/bin/bash

filetransfer=$( system_profiler SPBluetoothDataType | grep -e "Bluetooth File Transfer:" -A3 | grep -i "State" | awk '{ print $2 }' )
fileexchange=$( system_profiler SPBluetoothDataType | grep -e "Bluetooth File Exchange:" -A4 | grep -i "State" | awk '{ print $2 }' )
intsharing=$( system_profiler SPBluetoothDataType | grep -e "Bluetooth Internet Sharing:" -A1 | grep -i "State" | awk '{ print $2 }' )

if [ "$filetransfer" = "Disabled" ] && [ "$fileexchange" = "Disabled" ] && [ "$intsharing" = "Disabled" ];
then
	echo "<result>Disabled</result>"
	exit 0
else
	echo "<result>Enabled</result>"
fi