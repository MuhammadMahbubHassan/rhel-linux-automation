#!/bin/bash
THRESHOLD=15
echo "disk useages report - $(date)"
df -h | awk 'NR==1 || $5+0 > '$THRESHOLD' {print $0}' 


