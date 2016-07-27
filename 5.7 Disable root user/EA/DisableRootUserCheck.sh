#!/bin/bash

# Has someone enabled the root user account?

check=$( dscl . -read /Users/root AuthenticationAuthority )

if [ "$check" = "No such key: AuthenticationAuthority" ];
then
	echo "<result>Disabled</result>"
else
	echo "<result>Enabled</result>"
fi