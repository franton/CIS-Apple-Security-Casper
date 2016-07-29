#!/bin/bash

check=$(find /Applications -iname "*\.app" -type d -perm -2 -ls)

if [ "$check" == "" ];
then
    echo "<result>Secure</result>"
else
    echo "<result>Insecure</result>"
fi