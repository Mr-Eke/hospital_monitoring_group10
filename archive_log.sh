#!/usr/bin/env bash

# Log file to be archived
LOG_FILE="heart_rate_log.txt"

# Check if the log file exists
if [ ! -f "$LOG_FILE" ]; then
	echo "Error:log file $LOG_FILE not found"
       exit 1
fi       
