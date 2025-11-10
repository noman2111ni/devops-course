#!/bin/bash

LOG_DIR="./logs"

echo "Scanning log files in $LOG_DIR..."

grep -h "ERROR:" "$LOG_DIR"/*.log | \
sed 's/.*ERROR: //' | \
sort | uniq -c | sort -nr | \
awk '{count=$1; $1=""; print "ERROR:" substr($0,2) " - " count " times"}'
