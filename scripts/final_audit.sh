#!/bin/bash

# ==========================
# Linux Final Audit Script
# Author: Masum
# Date: $(date)
# ==========================

LOG="/var/log/final_audit_$(date +%F_%H-%M-%S).log"

# Function to write headers
print_header() {
    echo -e "\n=============================="
    echo -e "[$1]"
    echo -e "=============================="
}

{
    echo "Linux Final Audit Report - $(date)"
    echo "Hostname: $(hostname)"
    
    print_header "1. Uptime"
    uptime

    print_header "2. Current Date and Time"
    date

    print_header "3. System IP and Host Info"
    ip addr show | grep -E 'inet ' | awk '{print $2}' | grep -v '127.0.0.1'
    hostnamectl

    print_header "4. Disk Usage"
    df -h

    print_header "5. Memory Usage"
    free -h

    print_header "6. Top 5 Processes by Memory"
    ps aux --sort=-%mem | head -n 6

    print_header "7. Top 5 Processes by CPU"
    ps aux --sort=-%cpu | head -n 6

    print_header "8. Logged-In Users"
    who

    print_header "9. Last 5 Login Attempts"
    last -n 5

    print_header "10. Yum Package Updates (Summary)"
    yum check-update || echo "No updates or 'yum check-update' failed."

    print_header "11. Security Updates (if supported)"
    yum updateinfo list security all 2>/dev/null || echo "Security update info not available (yum-plugin-security may not be installed)."

    print_header "12. Mounted Filesystems"
    mount | column -t

} | tee "$LOG"

