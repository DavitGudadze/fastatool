#!/bin/bash

file="$1"
n="$2"

if [[ -z "$n" ]]; then
  n=3
fi

lines=$(wc -l < "$file")

if [[ $lines -le $((2 * n)) ]]; then 
  echo "File has less or equal numbers , then requested"
  cat "$file"
else 
  echo "Warning: file has more lines, then requested."
  head -n "$n" "$file"
  echo "..."
  tail -n "$n" "$file"
fi

