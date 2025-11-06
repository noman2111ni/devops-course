#!/bin/bash
echo "Choose option :"
echo "1) Show Disk Space: "
echo "2) Show to tops Cpu consuming process: "
echo "3) Show to tops memory consuming process : "
read -p "Enter the Choose (1/2/3/all) : " choose
if [ "$choose" == "1" ];then
	echo "Disk Space Usage : "
	df -h
elif [ "$choose" == "2" ];then
	echo "Show to tops Cpu consuming process : "
	ps -eo pid,comm,%cpu --sort=-%cpu | head -n 11
elif [ "$choose" == "3" ];then
	echo "Show to top Memory consuming process : "
	ps -eo pid,comm,%mem --sort=-%cpu | head -n 11
elif [ "$choose" == "all" ];then
	echo "Disk Space Usage : "
        df -h
	echo "---------------------------"
	echo "Show to tops Cpu consuming process : "
        ps -eo pid,comm,%cpu --sort=-%cpu | head -n 11
	echo "---------------------------"
	echo "Show to top Memory consuming process : "
        ps -eo pid,comm,%mem --sort=-%cpu | head -n 11
else
	echo "invalid"
fi
