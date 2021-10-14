#!/bin/sh -x
read number
#number=$(((RANDOM%100)+1))
a=100
s=0
temp=0

while [ $number -ne $temp ]
do
	
	temp=$(( ($a + $s) / 2 ))	
	echo "temp :$temp"
	if [ $temp -gt $number ]
	then
		a=$temp
		echo "a:$a"

	fi
	if [ $temp -lt $number ]
	then
		s=$temp
		echo "s:$s"
	fi
done
echo "number :$number"
echo "temp :$temp"
