#!/bin/sh -x
for (( a1=1; a1<=20; a1++ ))
do
	a4=0
	for (( a2=2; a2<=20; a2++ ))
	do

		a3=$(( $a1 % $a2 ))
		if [ $a3 == 0 ]
		then
			a4=$(( $a4 + 1 ));
		fi
	done

	if [ $a4 == 1 ]
	then
		echo "prime no.s are $a1"
	fi
done
