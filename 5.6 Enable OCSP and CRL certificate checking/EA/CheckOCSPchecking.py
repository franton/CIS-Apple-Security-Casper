#!/usr/bin/python

# EA to check for CRL certificate checking

import CoreFoundation

domain = 'com.apple.security.revocation'
key = 'OCSPStyle'

key_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

if key_value == "RequireIfPresent":
    print "<result>Enabled</result>"
else:
    print "<result>Disabled</result>"