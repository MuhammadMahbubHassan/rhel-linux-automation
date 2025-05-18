#!/bin/bash

# cron_audit.sh
# Author: Masum
# Purpose: Audit and list all cron jobs across users and system files

echo "===== CRON JOB AUDIT REPORT ====="
echo "Generated on: $(date)"
echo "----------------------------------"

# 1. List user-specific crontabs
echo -e "\n[+] User Crontabs:"
for user in $(cut -f1 -d: /etc/passwd); do
    crontab -l -u "$user" 2>/dev/null | grep -v "^#" | grep -v "^$" && echo "→ User: $user"
done

# 2. List /etc/crontab contents
echo -e "\n[+] /etc/crontab contents:"
if [ -f /etc/crontab ]; then
    grep -v "^#" /etc/crontab | grep -v "^$"
else
    echo "/etc/crontab not found."
fi

# 3. List files in /etc/cron.d/
echo -e "\n[+] /etc/cron.d jobs:"
if [ -d /etc/cron.d ]; then
    for file in /etc/cron.d/*; do
        echo "→ File: $file"
        grep -v "^#" "$file" | grep -v "^$"
    done
else
    echo "/etc/cron.d not found."
fi

# 4. Check scripts in cron.{hourly,daily,weekly,monthly}
for dir in /etc/cron.hourly /etc/cron.daily /etc/cron.weekly /etc/cron.monthly; do
    echo -e "\n[+] Scripts in $dir:"
    if [ -d "$dir" ]; then
        ls -1 "$dir"
    else
        echo "Directory $dir not found."
    fi
done

echo -e "\n===== End of Report ====="

