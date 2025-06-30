#!/bin/bash

# Виводимо список унікальних залогінених користувачів
echo "Logged-in users:"
who | awk '{ print $1 }' | sort | uniq

# Рахуємо кількість сесій
sessions=$(who | wc -l)
echo "Active sessions: $sessions"
