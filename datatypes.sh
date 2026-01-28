#!/bin/bash
NUM1=100
NUM2=200
SUM=$(($NUM1+$NUM2))

echo "sum is : $SUM"
#Array
FRUITS=("apple" "banana" "kiwi")
echo "fruits are: ${FRUITS[@]}"
echo "first fruit is: ${FRUITS[0]}"
echo "second fruit is: ${FRUITS[1]}"
echo "third fruit is: ${FRUITS[2]}"