#!/bin/bash

file_name="report.txt"

echo "=======================" > $file_name


echo "       Usage System        " >> $file_name


echo "==========================" >> $file_name


echo "Check Date and Time $(date)" >> $file_name

echo "" >> $file_name

# Top 5 CPU-consuming processes

echo "Top 5 CPU-consuming processes: " >> $file_name

ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6 >> $file_name

echo "" >>$file_name

echo "===================================" >> $file_name

echo "Top 5 Memory Consuming Processes:" >> $file_name
ps -eo pid,comm,%mem --sort=-%mem | head -n 6 >> $file_name
echo "" >> $file_name

echo "Report saved in $(pwd)/$OUTPUT"
