#!/usr/bin/python

# EA to check for Automatic Logins

import CoreFoundation

domain = 'com.apple.loginwindow'
key = 'autoLoginUser'

key_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

if key_value == 1:
    print "<result>Enabled</result>"
else:
    print "<result>Disabled</result>"