#!/bin/sh -x

echo "enter 1 for degF to degC"
echo "enter 2 for degC to degF"
read ch
echo "enter value between (0C/32F) to (100C/212F)"
read temp
conversion () 
{
	case $1 in
	1) degc=$(( ( $2 * (9 / 5)) + 32 ))
		echo "DegC= $degc C";;
	2) degf=$(( ( $2 - 32 ) * 5 / 9 ))
		echo "DegF= $degf F";;
	*) echo "done";;
	esac
}

conversion $ch $temp


