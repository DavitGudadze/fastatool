#!/bin/bash

file="$1"
n="$2"

head -n $n "$file"
echo "..."
tail -n $n "$file"

