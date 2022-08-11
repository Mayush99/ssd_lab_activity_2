#!/bin/bash

path=$1

lines=$(cat $path | wc -l)
#echo "$lines"
if [ $(( $lines / 2 )) != 0 ]; then
    lines=$(( $lines + 1))
    middle=$(( $lines / 2 ))
else
    middle=$(( $lines / 2 ))
fi
#echo "$middle"
awk -v mid=$middle 'NR==mid {print}' $path
