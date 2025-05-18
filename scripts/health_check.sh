#!/bin/bash
# health_check.sh — Basic Linux System Health Check

echo "======================================="
echo "     System Health Report for $(hostname)"
echo "     Generated on: $(date)"
echo "======================================="

# Uptime
echo -e "\n[+] System Uptime:"
uptime

# CPU Load
echo -e "\n[+] CPU Load (1, 5, 15 min):"
cat /proc/loadavg

# Memory Usage
echo -e "\n[+] Memory Usage:"
free -h

# Disk Usage
echo -e "\n[+] Disk Usage:"
df -h --total | grep -E "(Filesystem|total)"

# Top 5 Memory-Consuming Processes
echo -e "\n[+] Top 5 Memory-Consuming Processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6

# Top 5 CPU-Consuming Processes
echo -e "\n[+] Top 5 CPU-Consuming Processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6

