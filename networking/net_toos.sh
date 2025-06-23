#!/bin/bash

ping_site() {
echo "[+] Перевірка $1..."
ping -c 3 $1 > /dev/null
if [ $? -eq 0 ]; then 
   echo "$1 Доступний"
else 
   echo "$1 Недоступнмй"
fi
}

check_port() {
echo "[+] Перевірка порта $2 на хості $1..."
nc -z -w1 $1 $2 &> /dev/null
if [ $? -eq 0 ]; then
  echo  "$2 Open"
else
  echo  "$2 Close"
fi
}

while true; do
 read -p "Введіть хост:   " host
 read -p  " Введіть порт:  " port

 ping_site "$host"
 check_port "$host" "$port"
 
 read -p "Хочеш ще один? (y/n):  " ansver
 [[ $ansver != "y" ]] && break
done
