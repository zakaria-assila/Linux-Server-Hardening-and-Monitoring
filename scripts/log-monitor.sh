#!/bin/bash

LOG_FILE="/var/log/auth.log"

echo "====================================="
echo " Linux Server Log Monitoring"
echo "====================================="

if [ ! -f "$LOG_FILE" ]; then
    echo "Log file not found!"
    exit 1
fi

echo
echo "Last 10 failed SSH login attempts:"
echo "----------------------------------"

grep "Failed password" "$LOG_FILE" | tail -10

echo
echo "====================================="
echo "Monitoring completed."
echo "====================================="
