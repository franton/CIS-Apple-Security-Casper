#!/usr/bin/python

# EA to check for Bonjour Advertising

import CoreFoundation

domain = 'com.apple.mDNSResponder'
key = 'NoMulticastAdvertisements'

key_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

if key_value == 1:
    print "<result>Enabled</result>"
else:
    print "<result>Disabled</result>" 