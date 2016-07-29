#!/bin/bash

# EA to check if other users can log into active user session via screensaver

check=$( security authorizationdb read system.login.screensaver 2>/dev/null | grep "authenticate-session-user" | sed 's/<^>]*>//g' | sed 's/^[[:space:]]*//' )

if [ "$check" == "authenticate-session-user" ]; then
    echo "<result>Disabled</result>"
else
    echo "<result>Enabled</result>"
fi
