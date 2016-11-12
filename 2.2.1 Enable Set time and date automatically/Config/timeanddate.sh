#!/bin/bash

cat > /etc/ntp.conf << 'NTP'
server ns0.time.server
server ns1.time.server
server time.apple.com
NTP

systemsetup –setusingnetworktime on