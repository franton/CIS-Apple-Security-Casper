#!/usr/bin/python

import CoreFoundation

domain = 'com.apple.SoftwareUpdate'
key = 'CriticalUpdateInstall'

key_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

if key_value == 1:
    print "<result>Enabled</result>"
else:
    print "<result>Disabled</result>"
