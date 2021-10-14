#!/bin/sh -x

coin=$((RANDOM%2))

if [ coin -eq 0 ]
then
	echo "head on the coin"
else
	echo "tail on the coin"
fi

