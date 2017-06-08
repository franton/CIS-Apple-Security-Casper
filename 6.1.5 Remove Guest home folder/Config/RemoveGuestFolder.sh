#!/bin/bash

# Remove Guest User account home folder

if [ -e /Users/Guest ];
then
	rm -rf /Users/Guest
fi