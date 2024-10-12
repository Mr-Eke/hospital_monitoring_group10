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

