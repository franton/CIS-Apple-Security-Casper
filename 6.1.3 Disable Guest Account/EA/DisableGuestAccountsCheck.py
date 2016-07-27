#!/usr/bin/python

# EA to check for Guest user account status

import CoreFoundation

domain = 'com.apple.loginwindow'
key = 'GuestEnabled'

key_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

if key_value == 1:
    print "<result>Enabled</result>"
else:
    print "<result>Disabled</result>" 
