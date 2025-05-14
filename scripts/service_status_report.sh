:#!/bin/bash
echo "service status report - $(date)"
echo "-------------------------------"

services=("sshd" "network" "firewalld" "chronyd")

for svc in "${services[@]}"; do
status=$(systemctl is-active "$svc")
echo "Service: $svc| Status: $status"
done

