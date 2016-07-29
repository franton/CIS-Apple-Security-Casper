#!/usr/bin/python

# EA to check the inactivity interval for the screen saver.
# This will return the number of seconds, which you can scope a smart group from.

import CoreFoundation
domain = 'com.apple.screensaver'
key = 'idleTime'

key_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

print "<result>%s</result>" % key_value