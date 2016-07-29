#!/usr/bin/python

# EA to check the inactivity interval for the screen saver.
# This will return the number of seconds, which you can scope a smart group from.

# Get the current user of the computer.

from SystemConfiguration import SCDynamicStoreCopyConsoleUser
import sys
username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]
username = [username,""][username in [u"loginwindow", None, u""]]

# Read the current user's screensaver byhost preference file

import CoreFoundation
domain = 'com.apple.screensaver'
key = 'idleTime'

key_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

print "<result>%s</result>" % key_value