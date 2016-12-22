#!/usr/bin/python

# EA to check for CRL certificate sufficiency

import CoreFoundation

domain = 'com.apple.security.revocation'
key = 'CRLSufficientPerCert'

key_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

if key_value == "1":
    print "<result>Enabled</result>"
else:
    print "<result>Disabled</result>" 