#!/bin/bash

# Session 8 - Beginner system check script
# This script prints basic system information for DevOps practice.

echo "=============================="
echo " Basic System Check"
echo "=============================="

echo ""
echo "Current user:"
whoami

echo ""
echo "Current date:"
date

echo ""
echo "System uptime:"
uptime

echo ""
echo "Memory usage:"
free -h

echo ""
echo "Disk usage:"
df -h

echo ""
echo "Internet connectivity test:"
ping -c 3 google.com

if [ $? -eq 0 ]; then
    echo "Internet connectivity: OK"
else
    echo "Internet connectivity: FAILED"
fi

echo ""
echo "System check complete."
