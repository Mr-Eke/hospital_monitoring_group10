#!/usr/bin/env bash

# This script runs in the background, records heart rate data every second, and logs
# it to a text file. It also displays the Process ID of the script for management.

# Request for device name
read -p 'Enter device name (e.g., "Monitor_A", "Monitor_B"): ' device_name

heart_log="heart_rate_log.txt"
echo "Logging heart rate data to $heart_log"

# Log heart rate data every second into a log file
while true; do
    time_stamp=$(date "+%Y-%m-%d %H:%M:%S")
    simulated_heart_rate=$((RANDOM % 40 + 60)) # Random heart rate between 60 and 100
    echo "$time_stamp $device_name $simulated_heart_rate" >> "$heart_log"
    sleep 1
done &

# Display process ID for management
echo "The process ID (PID) for this script is: $!"
