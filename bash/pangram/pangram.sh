#!/usr/bin/env bash

alphabet="abcdefghijklmnopqrstuvxyz"

for (( i=0; i<${#alphabet}; i++ )); do
  if [[ ! $(echo "$1" | grep -i ${alphabet:$i:1}) ]]; then
    echo "false"
    exit 0
  fi
done

echo "true"
