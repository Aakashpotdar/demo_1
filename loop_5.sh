#!/bin/sh -x
echo "enter no. 10 or 100 or 1000"
read number


if [ $number -eq 10 ]
then
	echo "ten"
elif [ $number -eq 100 ]
then
	echo "hundred"
elif [ $number -eq 1000 ]
then
	echo "thousend"
else
	echo"wrong choice"
fi
