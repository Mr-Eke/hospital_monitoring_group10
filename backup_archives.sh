#!/usr/bin/env bash

# moves and backup archived log files to a remote server

archiveDirectory="archived_logs_group10"

# Checks if directory doesn't exists and creates it
if [ ! -d "$archiveDirectory" ]; then 
	mkdir "$archiveDirectory"
	echo "Directory has been successfully created"

else 
	echo "The Directory does exist"

fi

for eachFile in heart_rate_log.txt_*; do 
	if [ -f "$eachFile" ]; then
		mv "$eachFile" "$archiveDirectory"
		echo "The file has been successfully moved"
	else 
		echo "File not found"

  	fi 
done
