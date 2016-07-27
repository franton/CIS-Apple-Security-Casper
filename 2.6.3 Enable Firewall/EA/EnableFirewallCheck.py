#!/usr/bin/python

# EA to check for Firewall status

import CoreFoundation

domain = 'com.apple.alf'
key = 'globalstate'

key_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

if key_value == 0:
    print "<result>Disabled</result>"
else:
    print "<result>Enabled</result>"
