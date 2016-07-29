#!/usr/bin/python

# EA to check for Bluetooth Status

import CoreFoundation

domain = 'com.apple.Bluetooth'
key = 'ControllerPowerState'

key_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

if key_value == 0:
    print "<result>Disabled</result>"
else:
    print "<result>Enabled</result>" 
