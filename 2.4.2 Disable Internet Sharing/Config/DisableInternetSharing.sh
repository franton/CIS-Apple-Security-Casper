#!/bin/bash

# Disable Internet Sharing

defaults write /Library/Preferences/SystemConfiguration/com.apple.nat NAT -dict-add Enabled -int 0