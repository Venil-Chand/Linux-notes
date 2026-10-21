#!/bin/bash

# Display system information

echo "===== SYSTEM INFORMATION ====="

echo "Computer Name:"
hostname

echo "===== DISK USAGE ====="
df -h /

echo "===== MEMORY USAGE ====="
free -h

echo "===== SYSTEM UPTIME ====="
uptime -p
