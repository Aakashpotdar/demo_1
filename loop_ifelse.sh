#!/bin/sh -x
num1=$((RANDOM))
num2=$((RANDOM))
num3=$((RANDOM))

oprn1=$(($num1 + $num2 * $num3))
oprn2=$(($num1 % $num2 + $num3))
oprn3=$(($num1 + $num2 / $num3))
oprn4=$(($num1 * $num2 + $num3))

echo $oprn1 $oprn2 $oprn3 $oprn4

if [ $oprn1 -gt $oprn2 ]
then
	if [ $oprn1 -gt $oprn3 ]
	then
		if [ $oprn1 -gt $oprn4 ]
		then
			echo "max no. is $oprn1"
		else
			echo "max no. is $oprn4"
		fi
	else
		if [ $oprn3 -gt $oprn4 ]
		then
			echo "max no. is $oprn3"
		else
			echo "max no. is $oprn4"
		fi
	fi
else
	if [ $oprn2 -gt $oprn3 ]
	then
		if [ $oprn2 -gt $oprn4 ]
		then
			echo "max no. is $oprn2"
		else
			echo "max no. is $oprn4"
		fi
	else
		if [ $oprn3 -gt $oprn4 ]
		then
			echo "max no. is $oprn3"
		else
			echo "max no. is $oprn4"	
		fi
	fi
fi
