#!/bin/bash

# Turn Bluetooth off

defaults write /Library/Preferences/com.apple.Bluetooth.plist ControllerPowerState -int 0

killall -HUP blued