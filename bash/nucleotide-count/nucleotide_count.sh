#!/usr/bin/env bash

declare -i a=0 c=0 g=0 t=0

if [[ $1 =~ [^ACGT] ]]; then
  echo "Invalid nucleotide in strand"
  exit 1
fi

for (( i=0; i<${#1}; i++ )); do
  case ${1:$i:1} in
    A) (( a++ ));;
    C) (( c++ ));;
    G) (( g++ ));;
    T) (( t++ ));;
  esac
done

echo "A: $a"
echo "C: $c"
echo "G: $g"
echo "T: $t"
