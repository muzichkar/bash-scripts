#!/bin/bash

LOG="/var/log/auth.log"
OUT="incident_report.log"

echo "[+] Аналіз логів SSH — $(date)" > "$OUT"
echo "---------------------------------" >> "$OUT"

echo -e "\n🔹 ТОП-5 користувачів зі спробами входу:" >> "$OUT"
grep "Failed password" "$LOG" | awk '{print $7}' | sort | uniq -c | sort -nr | head -5 >> "$OUT"

echo -e "\n🔸 ТОП-5 IP-адрес з яких пробували увійти:" >> "$OUT"
grep "Failed password" "$LOG" | awk '{print $9}' | sort | uniq -c | sort -nr | head -5 >> "$OUT"

echo -e "\n✅ Аналіз завершено: $(date)" >> "$OUT"
cat "$OUT"
