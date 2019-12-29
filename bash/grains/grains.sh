#!/usr/bin/env bash

if [[ $1 == "total" ]]; then
  echo "18446744073709551615"
elif (( $1 >= 1 && $1 <= 64 )); then
  echo $(echo "2^($1-1)" | bc)
else
  echo "Error: invalid input" && exit 1
fi
