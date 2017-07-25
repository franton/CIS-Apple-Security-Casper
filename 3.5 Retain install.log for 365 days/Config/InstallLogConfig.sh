#!/bin/bash

days="365"
check=$( grep -i ttl /etc/asl/com.apple.install | awk -F'ttl=' '{print $2}' )

if [ "$check" = "" ];
then
   sed -ie 's/.format=bsd./format=bsd\ ttl='$days'/' /etc/asl/com.apple.install
else
   sed -ie 's/.*ttl=./ttl='$days'/' /etc/asl/com.apple.install
fi
