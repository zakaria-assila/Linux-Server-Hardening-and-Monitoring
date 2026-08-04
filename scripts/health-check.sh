#!/bin/bash

echo "===================================="
echo "      Linux Server Health Check"
echo "===================================="

echo
echo "Hostname:"
hostname

echo
echo "Uptime:"
uptime

echo
echo "Memory Usage:"
free -h

echo
echo "Disk Usage:"
df -h

echo
echo "IP Address:"
ip -4 addr show | grep inet

echo
echo "SSH Service:"
systemctl status ssh --no-pager | head -5

echo
echo "Fail2Ban Status:"
systemctl status fail2ban --no-pager | head -5

echo
echo "Firewall Status:"
sudo ufw status

echo
echo "===================================="
echo "Health Check Completed"
echo "===================================="
