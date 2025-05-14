#!/bin/bash
echo "SELinux status report- $(date)"
echo "------------------------------"

getenforce
sestatus


