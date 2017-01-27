#!/usr/bin/python

# EA to check for Bluetooth Status

import sys
import subprocess
import CoreFoundation

bttest = subprocess.call(["system_profiler SPBluetoothDataType | grep -i discoverable | awk '{ print $2 }'"], shell=True )

if bttest == 0:
    print "<result>Missing Bluetooth Device</result>"
    sys.exit()

domain = 'com.apple.Bluetooth'
key = 'ControllerPowerState'

key_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

if key_value == 1:
    print "<result>Enabled</result>"
else:
    print "<result>Disabled</result>" 