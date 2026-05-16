#!/bin/bash
 
#Interval in seconds between each refresh
INTERVAL=10
 
while true
do
#to clear the terminal screen in each iteration
    clear
    #echoing or printing text to make the output look good and descriptive
    echo "...................................................."
    echo " System Resource Monitor (updated every $INTERVAL s)"
    echo "...................................................."
 
    #... CPU USAGE ...
    echo ".......CPU Usage......."
    #top command is used to get real time processes details, cpu usage and memory usage in batch mode and then we just filter cpu usage
    top -b -n1 | grep "Cpu(s)"
    echo ".........................................................................."
 
    #...Memory Usage...
    echo ".......Memory Usage......."
    # free -h is used to display memory usage and swap space
    free -h
    echo "..........................................................................."
 
    #... Disk I/O ...
    echo ".......Disk I/O......."
    #iostat is used to get Disk I/O stats and then we skip headers and summary to print only after line 6.
    iostat -x 1 1 | awk 'NR>6 { print }'
    echo "..............................................."
 
      #wait for 10s interval before refreshing
    sleep $INTERVAL
done
