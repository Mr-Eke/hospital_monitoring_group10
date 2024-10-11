#!/bin/bash
# This script records heart rate data every second and logs record to heart_rate_log.txt file
# It also displays the Process ID (PID) of the script

# Request for device name
echo "Enter the Recording Device Name:"
read device_name

# Display logging message and PID of the script
echo "Heart rate logging starting..."
echo "The process ID (PID) is : $$"
echo "Logging heart rate data to heart_rate_log.txt."


