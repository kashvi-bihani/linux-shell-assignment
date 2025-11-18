#!/bin/bash
# Purpose : Monitor CPU and Memory usage at intervals
# Name    : Kashvi Bihani
# Date    : 16-11-2025

# Output log file
LOG_FILE="/home/kashvi_bihani/top.sh/"

# Interval in seconds
INTERVAL=5

echo "Starting system monitoring..."
echo "Logs stored in index.html"
echo "---------------------------------" >> "index.html"

while true
do
    # Time stamp
    TIME=$(date +"%Y-%m-%d %H:%M:%S")

    # CPU usage
    CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')

    # Memory usage
    MEM=$(free | grep Mem | awk '{print $3/$2 * 100.0}')

    # Write to log
    echo "Time: $TIME | CPU: ${CPU}% | Memory: ${MEM}%" >> "index.html"

    sleep $INTERVAL
done
