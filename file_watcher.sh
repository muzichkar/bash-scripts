#!/bin/bash

WATCH_DIR="$HOME/watch_folder"
LOG_FILE="$WATCH_DIR/log.txt"

echo "[+] Старт моніторингу $WATCH_DIR..." >> "$LOG_FILE"

inotifywait -m "$WATCH_DIR" -e create |
while read path action file; do
    echo "$(date): Виявлено новий файл: $file ($action)" >> "$LOG_FILE"
done
