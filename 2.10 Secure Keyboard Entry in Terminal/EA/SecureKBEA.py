#!/usr/bin/python

# EA to check for OS X update installation

import CoreFoundation

domain = 'com.apple.Terminal'
key = 'SecureKeyboardEntry'

key_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

if key_value == 1:
    print "<result>Enabled</result>"
else:
    print "<result>Disabled</result>"
