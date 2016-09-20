#!/usr/bin/python

# EA to check for Find My Mac

import CoreFoundation

domain = 'com.apple.FindMyMac'
key = 'FMMEnabled'

key_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

if key_value == 1:
    print "<result>Enabled</result>"
else:
    print "<result>Disabled</result>" 