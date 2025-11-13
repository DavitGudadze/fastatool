#!/bin/bash

file=$1
num=$(wc -l < "$file" | tr -d " ")

if [[ "$num" -eq 0 ]]; then
echo " $file has zero lines."
elif [[ "$num" -eq 1 ]]; then
echo " $file has only one line."
else 
echo " $file has $num lines. "
fi
