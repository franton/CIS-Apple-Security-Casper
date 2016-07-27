#!/usr/bin/python

# EA to check for passwords required on wake

import CoreFoundation

domain = 'com.apple.screensaver'
key = 'askForPassword'

key_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

if key_value == 1:
    print "<result>Enabled</result>"
else:
    print "<result>Disabled</result>" 
