#!/usr/bin/env bash

declare -i sum_sq=0
declare -i sum=0

for (( i=1; i<=$2; i++ )); do
  sum_sq+=$(( i**2 ))
  sum+=$i
done

sq_sum=$(( sum**2 ))

if [[ $1 == "square_of_sum" ]]; then
  echo $sq_sum
elif [[ $1 == "sum_of_squares" ]]; then
  echo $sum_sq
else
  echo $((sq_sum - sum_sq))
fi
