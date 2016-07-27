#!/bin/bash

# EA to check Gatekeeper status on a mac

gatekeeper_status=$( spctl --status | grep "assessments" | cut -c13- )

if [ $gatekeeper_status = "disabled" ]; then
	echo "<result>Disabled</result>"
else
	echo "<result>Enabled</result>"
fi
