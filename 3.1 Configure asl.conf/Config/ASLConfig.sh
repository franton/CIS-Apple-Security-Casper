#!/bin/bash

days="90"

sed -i 's/ttl=./ttl='$days'/' /etc/asl.conf