#!/usr/bin/python

# EA to check for Fast User Switching status

import CoreFoundation

domain = 'GlobalPreferences'
key = 'MultipleSessionEnabled'

key_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

if key_value == 1:
    print "<result>Enabled</result>"
else:
    print "<result>Disabled</result>"
