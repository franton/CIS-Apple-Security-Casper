#!/bin/bash
# CIS 5.11
sed -i.bak 's/group=admin,wheel fail_safe/group=wheel fail_safe/g' /etc/pam.d/screensaver