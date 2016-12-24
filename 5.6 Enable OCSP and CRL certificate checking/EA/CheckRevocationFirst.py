#!/usr/bin/python

# EA to check for which method to check for certificate revocation

import CoreFoundation

domain = 'com.apple.security.revocation'
key = 'RevocationFirst'

key_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

if key_value == "OCSP":
    print "<result>Enabled</result>"
else:
    print "<result>Disabled</result>"