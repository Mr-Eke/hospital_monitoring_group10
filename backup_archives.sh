#!/usr/bin/env bash

# Script that moves and backup archived log files to a remote server

userName="2689fa338548"
hostInfo="2689fa338548.bc49e1b9.alu-cod.online"
archiveDirectory="archived_logs_group10"

# Checks if directory doesn't exists and create it
if [ ! -d "$archiveDirectory" ]; then
    mkdir "$archiveDirectory"
    echo "Directory is successfully created. Moving files now.."
else
    echo "Directory already exist. Moving files now.."
fi

# Loop through archived files and move them to the directory
for eachFile in heart_rate_log.txt_*; do
    if [ ! -f "$eachFile" ]; then
        echo "No available files to move"
    else
        mv "$eachFile" "$archiveDirectory"
    fi
done

# Copy/backup archived data to a remote server
scp -r $archiveDirectory "$userName@$hostInfo:/home/"

# checks if the script entirely xcuted successfuly
if [ $? -eq 0 ]; then
    echo -e "\nFiles succesfully moved and backed up to remote server"
else
    echo "Backup failed"
fi
