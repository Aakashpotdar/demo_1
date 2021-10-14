#!/bin/sh -x

echo "enter the year"
read y

d=$(( $y % 4 ))
r=$(( $y % 100 ))
e=$(($y % 400 ))
if [ $d -eq 0 -a $r -ne 0 ]
then
	echo this is leap year

elif [ $r -eq 0 -a $e -eq 0 ]
then
	echo this is leap year
else
	echo this is not a leap year
fi
