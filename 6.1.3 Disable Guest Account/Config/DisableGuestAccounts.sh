#!/bin/bash

# Disable Guest User account login

defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled -bool NO
