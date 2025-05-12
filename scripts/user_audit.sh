#!/bin/bash

echo "User Login Audit - $(date)"
getent passwd {1000..60000} | cut -d: -f1 | while read user; do
    lastlog -u "$user"
done

