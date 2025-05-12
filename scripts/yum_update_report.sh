#!/bin/bash

# Script: yum_update_report.sh
# Purpose: Report available package and security updates
# Works on: RHEL/CentOS 7/8/Stream

echo "YUM Update Report - $(date)"
echo "----------------------------------------"

# Check for all available updates
echo "[+] Available Package Updates:"
yum check-update 2>/dev/null

echo ""
echo "[+] Security Updates (if 'yum-plugin-security' is installed):"
yum updateinfo list security all 2>/dev/null || echo "Security plugin not available"

