#!/bin/bash

# EA to check for the security auditing flags

result=$( awk -F':' -v s='flags' '$1 == s {print $2}' /etc/security/audit_control )

echo "<result>$result</result>"