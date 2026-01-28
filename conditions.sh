#!/bin/bash
AGE=$1
if [ $AGE -gt 18 ]; then
    echo "major"
elif [ $AGE -eq 18 ]; then
    echo "equal to 18"
else[ $AGE -lt 18 ]; then
    echo "minor"
fi
