#!/bin/bash
DATE=$(date "+%m-%d")
grep "Failed password" /var/log/auth.log | grep "$DATE" | awk '{print $9}' | sort | uniq -c | sort -nr

grep "Acc" /var/log/auth.log 
