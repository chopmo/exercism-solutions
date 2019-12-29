#!/usr/bin/env bash

set -euo pipefail

result=""

for (( i=0; i<${#1}; i++ )); do
  result="${1:$i:1}${result}"
done

echo "$result"
