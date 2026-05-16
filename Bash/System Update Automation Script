#!/bin/bash
LOGFILE="/var/log/sys-updates.log"
EMAIL="admin@example.com"

echo "Starting updates on $(date)" >> $LOGFILE
apt update && apt upgrade -y >> $LOGFILE 2>&1
apt autoremove -y >> $LOGFILE 2>&1

tail -20 $LOGFILE | mail -s "System Update Report: $HOSTNAME" $EMAIL
