#!/usr/bin/env bash

# Log file to be archived
LOG_FILE="heart_rate_log.txt"

# Check if the log file exists
if [ ! -f "$LOG_FILE" ]; then
	echo "Error:log file $LOG_FILE not found"
       exit 1
fi

# Get Log file format its time stamp and move them as archived 
TIME_STAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_FILE="${LOG_FILE}_${TIME_STAMP}" 

mv "$LOG_FILE" "$ARCHIVE_FILE"
echo "Log file has been archived as $ARCHIVE_FILE"

