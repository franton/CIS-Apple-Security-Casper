#!/bin/sh
 
# Script to disable file sharing services

launchctl unload -w /System/Library/LaunchDaemons/com.apple.AppleFileServer.plist
launchctl unload -w /System/Library/LaunchDaemons/com.apple.smbd.plist