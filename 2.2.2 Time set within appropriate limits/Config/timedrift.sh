#!/bin/bash

# Time server to check specified here
timeserver="time.server.address"

# Get the current time drift. We're looking for between -270 and 270 seconds.
# Convert negative to positive numbers for easier processing later.
drift=$( ntpdate -svd $timeserver | egrep offset | sed 's/-//g' )

# Are we out of sync? Use bc as we're dealing with floating point numbers
if (( $(bc <<< "$drift <= 270") ))
then
	ntpd -g -x -q
fi