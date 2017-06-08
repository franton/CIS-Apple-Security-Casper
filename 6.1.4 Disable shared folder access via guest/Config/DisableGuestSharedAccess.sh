#!/bin/bash

# Disable Guest User shared folder access

defaults write /Library/Preferences/com.apple.AppleFileServer guestAccess -bool no
defaults write /Library/Preferences/com.apple.smb.server AllowGuestAccess -bool no
