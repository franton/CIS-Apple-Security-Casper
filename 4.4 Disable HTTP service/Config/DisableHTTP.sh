#!/bin/bash

apachectl stop
defaults write /System/Library/LaunchDaemons/org.apache.httpd Disabled -bool true