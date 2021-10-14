#!/bin/sh -x

num1=$(((RANDOM%6)+1))
num2=$(((RANDOM%6)+1))

sum=$(($num1 + $num2))

echo "sum of number is $sum"

avg=$(($sum / 2))

echo "avrage of number is $avg"
