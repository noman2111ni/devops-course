#!/bin/bash

current_date=$(date)
backup_folder="backup_$current_date"
mkdir -p "$backup_folder"
cp *.txt "$backup_folder"
echo "Backup of .sh files completed in folder: $backup_folder"