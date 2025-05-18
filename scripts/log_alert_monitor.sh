#!/bin/bash
# Script: log_alert_monitor.sh
# Purpose: Parse system logs and raise alerts for suspicious activity

LOG_FILE="/var/log/secure"
KEYWORDS=("error" "fail" "denied" "unauthorized")
ALERT_FILE="/tmp/log_alerts_$(date +%F_%H-%M-%S).log"

echo "[+] Scanning $LOG_FILE for suspicious patterns..."

for keyword in "${KEYWORDS[@]}"; do
    grep -i "$keyword" "$LOG_FILE" >> "$ALERT_FILE"
done

if [ -s "$ALERT_FILE" ]; then
    echo "[!] Suspicious log entries found:"
    cat "$ALERT_FILE"
else
    echo "[✓] No suspicious entries found."
    rm -f "$ALERT_FILE"
fi

