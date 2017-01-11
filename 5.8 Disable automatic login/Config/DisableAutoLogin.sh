#!/bin/bash

# Script to disable Auto Logging In

defaults delete /Library/Preferences/com.apple.loginwindow autoLoginUser
rm /etc/kcpassword