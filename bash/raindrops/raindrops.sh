#!/usr/bin/env bash

out=""

if (($1 % 3 == 0)); then
  out="Pling"
fi

if (($1 % 5 == 0)); then
  out="${out}Plang"
fi

if (($1 % 7 == 0)); then
  out="${out}Plong"
fi

if [[ ! $out ]]; then
  out=$1
fi

echo $out
