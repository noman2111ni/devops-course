#!/bin/bash

read -p "Enter Your name :" noman
echo noman

read -p "Enter Your city :" city
echo city

date=$(date)



echo "---------------------------------------"
echo "My name is $noman."
echo "I live in $city."
echo "Today's date and time is: $date"
echo "---------------------------------------"
