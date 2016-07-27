#!/bin/sh
 
# Remove the existing SSH access group (revert to all user access)
dseditgroup -o delete -t group com.apple.access_ssh

# Create the access group again anew
dseditgroup -o create -q com.apple.access_ssh

# Add the Casper Management account (very important!)
dseditgroup -o edit -a caspermgt -t user com.apple.access_ssh

# Add the standard local admin management account
dseditgroup -o edit -a Administrator -t user com.apple.access_ssh

# Make sure that SSH is enabled
systemsetup -setremotelogin on