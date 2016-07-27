#!/bin/bash

# Disable root user. Send admin password from Casper Policy to make this work.

dsenableroot -d -u Administrator -p $4 -r $4