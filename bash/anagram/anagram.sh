#!/usr/bin/env bash

function sort_str {
  echo $1 | grep -o . | sort | tr -d $'\n'
}

result=""

for word in $2; do
  if [[ $(sort_str ${word^^}) == $(sort_str ${1^^}) &&
        ${word^^} != ${1^^} ]]; then
    result+="$word "
  fi
done

echo $result
