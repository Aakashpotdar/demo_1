#!/bin/sh -x


a=Z
b=z

if [ $a -gt $b ]
then
	echo "$a is grater than $b"
elif [ $a -lt $b ]
then
echo "$a is less than $b"
elif [ $a -eq $b ]
then
echo "$a is equal to $b"
fi
