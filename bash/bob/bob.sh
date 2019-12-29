#!/usr/bin/env bash

if [[ ${1^^} == $1 && ${1^^} =~ [A-Z] ]]; then
  if [[ $1 =~ .*\?$ ]]; then
    echo "Calm down, I know what I'm doing!"
  else
    echo "Whoa, chill out!"
  fi
elif [[ $1 =~ .*\?[[:blank:]]*$ ]]; then
  echo "Sure."
elif [[ $1 =~ ^[$'\n'$'\r'[:blank:]]*$ ]]; then
  echo "Fine. Be that way!"
else
  echo "Whatever."
fi
