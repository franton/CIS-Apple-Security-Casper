#!/usr/bin/python

# EA to check for filename extension show status

import CoreFoundation

domain = 'com.apple.finder'
key = 'AppleShowAllExtensions'

key_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

if key_value == 1:
    print "<result>Enabled</result>"
else:
    print "<result>Disabled</result>"
