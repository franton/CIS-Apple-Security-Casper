#!/bin/bash

days="90"
check=$( grep -i ttl /etc/asl/com.apple.authd | awk -F'ttl=' '{print $2}' )

if [ "$check" = "" ];
then
   sed -ie 's/.all_max=20M./all_max=20M\ ttl='$days'/' /etc/asl/com.apple.authd
else
   sed -ie 's/.*ttl=./ttl='$days'/' /etc/asl/com.apple.authd
fi
