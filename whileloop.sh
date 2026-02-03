#!/bin/bash

while IFS= read -r line; do
  # Process each line here
  echo "$line"
done < ifs.sh