#!/bin/sh
 
# Script to disable printer sharing

# Disable the printer sharing service

cupsctl --no-share-printers

# Disable for all installed printer objects

lpstat -p | awk ‘{print $2}’| xargs -I{} lpadmin -p {} -o printer-is-shared=false