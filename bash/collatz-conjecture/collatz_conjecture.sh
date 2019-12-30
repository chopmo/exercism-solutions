#!/usr/bin/env bash

if (( $1 < 1 )); then
  echo "Error: Only positive numbers are allowed"
  exit 1
fi

declare -i steps=0
declare -i num=$1

while (( num > 1 )); do
  steps+=1
  if (( num % 2 == 0 )); then
    (( num /= 2 ))
  else
    (( num = 3 * num + 1 ))
  fi
done

echo $steps
