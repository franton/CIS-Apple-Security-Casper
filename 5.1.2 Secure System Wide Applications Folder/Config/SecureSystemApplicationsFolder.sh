#!/bin/sh

find /Applications -type d -exec chmod -R 755 {} +
find /Applications -type d -exec chown root:wheel {} +