#!/bin/bash

# EA to check for the number of days log files are retained.

result=$( sed -n 's/.*ttl=//p' /etc/asl.conf )

echo "<result>$result</result>"