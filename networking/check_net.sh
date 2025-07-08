#!/bin/bash

# Get today’s date for filename
DATE=$(date +%F)
LOGFILE="/home/$USER/network_log_$DATE.txt"

echo "===== OPEN TCP PORTS =====" > "$LOGFILE"
ss -tuln >> "$LOGFILE"

echo -e "\n===== ESTABLISHED CONNECTIONS =====" >> "$LOGFILE"
ss -tn state established >> "$LOGFILE"

echo "Report saved to: $LOGFILE"
