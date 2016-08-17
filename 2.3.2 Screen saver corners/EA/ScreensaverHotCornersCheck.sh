#!/bin/bash

user=$( python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");' )

tlcorner=$( defaults read /Users/$user/Library/Preferences/com.apple.dock wvous-tl-corner 2>/dev/null )
trcorner=$( defaults read /Users/$user/Library/Preferences/com.apple.dock wvous-tr-corner 2>/dev/null )
blcorner=$( defaults read /Users/$user/Library/Preferences/com.apple.dock wvous-bl-corner 2>/dev/null )
brcorner=$( defaults read /Users/$user/Library/Preferences/com.apple.dock wvous-br-corner 2>/dev/null )

# Test for unset preference, report Disabled if so.

if [ -z "$tlcorner" ] || [ -z "$trcorner" ] || [ -z "$blcorner" ] || [ -z "$brcorner" ];
then
        echo "<result>Disabled></result>"
        exit 0
fi

# If any preferences are set then check for screen saver disable setting.

if [[ "$tlcorner" -ne 6 && "$trcorner" -ne 6 && "$blcorner" -ne 6 && "$brcorner" -ne 6 ]];
then
        echo "<result>Disabled</result>"
else
        echo "<result>Enabled</result>"
fi
