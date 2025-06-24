#!/bin/bash

read -sp "Enter password: " password
echo

length=${#password}

[[ $password =~ [A-Z] ]] && has_upper=1 || has_upper=0
[[ $password =~ [a-z] ]] && has_lower=1 || has_lower=0
[[ $password =~ [0-9] ]] && has_digit=1 || has_digit=0

if (( length < 8 )); then
  echo "Weak password"
elif (( has_upper && has_lower && has_digit )); then
  echo "Strong password"
else
  echo "Medium password"
fi
