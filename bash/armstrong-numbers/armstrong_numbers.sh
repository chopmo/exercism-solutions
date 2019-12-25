#!/usr/bin/env bash

num_digits=${#1}

# I later learned that by using
# `declare -i sum`, I could have summed up with:
# sum+=$(( ${1:$i:1} ** $num_digits ))

for (( i=0; i<$num_digits; i++ )); do
  sum=$(( $sum + (${1:$i:1} ** $num_digits) ))
done

(( $sum==$1 )) &&  echo "true" || echo "false"
