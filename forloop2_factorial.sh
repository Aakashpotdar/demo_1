#!/bin/sh -x

echo "enter the limit"
read n
fac=1

for ((d=1; d<=n; d++))
do
	fac=$(($fac * $d))
done

echo $fac
