#!/usr/bin/python

# EA to check if Guest user can access AFP/SMB shares

import CoreFoundation

domain = 'com.apple.AppleFileServer'
key = 'guestAccess'

afp_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

domain = 'com.apple.smb.server'
key = 'AllowGuestAccess'

smb_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

if all( [not afp_value, not smb_value] ): 
    print "<result>Disabled</result>"
else:
    print "<result>Enabled</result>" 
