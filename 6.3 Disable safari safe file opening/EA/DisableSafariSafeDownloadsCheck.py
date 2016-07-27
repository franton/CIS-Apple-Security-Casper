#!/usr/bin/python

# EA to check for Safari's opening "safe" files on download

import CoreFoundation

domain = 'com.apple.Safari'
key = 'AutoOpenSafeDownloads'

key_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

if key_value == 0:
    print "<result>Disabled</result>"
else:
    print "<result>Enabled</result>" 
