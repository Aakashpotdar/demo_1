#!/bin/sh -x
echo "enter no."
read num

for ((tem=1; tem<=num; tem++ ))
do
	echo $(( 2 ** $tem ))
done

