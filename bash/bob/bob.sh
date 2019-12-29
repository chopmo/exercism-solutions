#!/usr/bin/env bash

# I tried to use $(expr ...) to assign the comparisons to variables,
# but without luck. Looked like I needed quoting, but I gave up and
# went with a simpler refactoring instead.

if [[ ${1^^} == $1 && ${1^^} =~ [A-Z] ]]; then
  shouting=true
fi

if [[ $1 =~ .*\?[[:blank:]]*$ ]]; then
  question=true
fi

if [[ $1 =~ ^[$'\n'$'\r'[:blank:]]*$ ]]; then
  silence=true
fi

if [[ $shouting && $question ]]; then
  echo "Calm down, I know what I'm doing!"
elif [[ $shouting ]]; then
  echo "Whoa, chill out!"
elif [[ $question ]]; then
  echo "Sure."
elif [[ $silence ]]; then
  echo "Fine. Be that way!"
else
  echo "Whatever."
fi
