#!/bin/bash

echo "-----------------------------------"

echo "Corrently Login Users "

echo "-----------------------------------"

who

echo "---------------------"

lastlog | tail 

echo "--------------------------"

awk -F: '{print $1}' /etc/passwd | tail
