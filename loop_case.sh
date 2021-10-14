#!/bin/sh -x
echo "enter the no." 
read number
ten=10;
hundrade=100;
thousend=1000;

case $number in
	$ten) echo "ten";;
	$hundrade) echo "hundrade";;
	$thousend) echo "thousend";;
	*) echo "wrong choice";;
esac
