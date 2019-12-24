#!/usr/bin/env bash

for word in $(echo "${1^^}" | sed -E "s/['_]//g" | sed -E 's/\W/ /g'); do
  acronym+=${word:0:1}
done

echo $acronym
