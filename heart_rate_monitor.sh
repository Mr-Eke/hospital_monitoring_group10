#!/bin/bash
# This script records heart rate data every second and logs record to heart_rate_log.txt file
# It also displays the Process ID (PID) of the script

# Request for device name
echo "Enter the Recording Device Name:"
read device_name

# Variable for holding heart_rate_log.txt
heart_log="heart_rate_log.txt"

# Display logging message and PID of the script
echo "Heart rate logging starting..."
echo "The process ID (PID) is : $$"
echo "Logging heart rate data to $heart_log"

# Loop for logging heart rate data every second
while true; do
	# Get the current timestamp
	timestamp=$(date +"%Y-%m-%d %H:%M:%S")

	# Generate random heart rate between 60 and 100
	heart_rate=$((RANDOM%41 + 60))

	# Log data to the heart_rate_log.txt file
	echo "$timestamp $device_name ${heart_rate}BPM" >> $heart_log

	# Sleep for 1 second before logging the next data
	sleep 1
done &
