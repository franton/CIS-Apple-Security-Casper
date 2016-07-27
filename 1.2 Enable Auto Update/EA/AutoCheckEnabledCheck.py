#!/usr/bin/python

# EA to check for auto update setting

import CoreFoundation

domain = 'com.apple.SoftwareUpdate'
key = 'AutomaticCheckEnabled'

key_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

if key_value == 1:
    print "<result>Enabled</result>"
else:
    print "<result>Disabled</result>" 
