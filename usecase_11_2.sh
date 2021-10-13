#!/bin/sh -x


i=0;
h=0;
t=0;

while [ $h -lt 21 -o $t -lt 21 ]
do
coin=$((RANDOM%2))

	case $coin in
	0)h=$(( $h + 1 ));;
	1)t=$(( $t + 1 ));;
	esac
	i=$(( $h + $t ))
done
if [ $h -gt $t ]
then
	echo "won by head"
else
	echo "won by tail"
fi
