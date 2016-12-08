#!/bin/bash

flags="lo,ad,fd,fm,-all"

sed -i 's/^flags\(.*\)/flags:'$flags'/' /etc/security/audit_control