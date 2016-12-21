#!/bin/bash

flags="lo,ad,fd,fm,-all"

sed -ie 's/^flags\(.*\)/flags:'$flags'/' /etc/security/audit_control