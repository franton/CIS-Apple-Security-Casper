#!/bin/bash

days="90"

sed -ie 's/ttl=./ttl='$days'/' /etc/asl.conf