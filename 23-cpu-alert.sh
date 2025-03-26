#!/bin/bash 

THRESHOLD=80

CPU_LOAD=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d. -f1) 
if [ "$CPU_LOAD" -gt "$THRESHOLD" ]; then 
   echo "Below are top 5 cpu consuming process:"
   ps aux --sort=-%cpu | head -5
   echo "High CPU usage: $CPU_LOAD%" | mail -s "CPU Load Alert" example@gmail.com  
fi



