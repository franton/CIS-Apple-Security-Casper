#!/bin/bash

# Script to configure NTP service to be restricted to loopback interface

echo -n "restrict lo interface ignore wildcard interface listen lo" >> /etc/ntp-restrict.conf
