#!/usr/bin/env bash

declare -i A=0 C=0 G=0 T=0

if [[ $1 =~ [^ACGT] ]]; then
  echo "Invalid nucleotide in strand"
  exit 1
fi

for (( i=0; i<${#1}; i++ )); do
  (( ${1:$i:1}++ ))
done

echo "\
A: $A
C: $C
G: $G
T: $T
"
