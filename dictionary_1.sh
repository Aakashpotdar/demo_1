#!/bin/sh -x
i=0;
o=0;
t=0;
th=0;
f=0;
v=0;
s=0;
while [ $o -lt 10 -a $t -lt 10 -a $th -lt 10 -a $f -lt 10 -a $v -lt 10 -a $s -lt 10 ]
do
	die=$(((RANDOM%6)+1))
	declare -A di
	di[$i]=$die
	temp=$(( di[$i] ));
	i=$(( $i + 1 ))
	if [ $temp -eq 1 ]
	then
		((o++))
		if [ $o -eq 10 ]
		then
			echo di[$i]
		fi
	elif [ $temp -eq 2 ]
	then
		((t++))
		if [ $t -eq 10 ]
		then
			echo di[$i]
		fi
	elif [ $temp -eq 3 ]
	then
		((th++))
		if [ $th -eq 10 ]
		then
			echo di[$i]
		fi
	elif [ $temp -eq 4 ]
	then
		((f++))
		if [ $f -eq 10 ]
		then
			echo di[$i]
		fi
	elif [ $temp -eq 5 ]
	then
		((v++))
		if [ $v -eq 10 ]
		then
			echo di[$i]
		fi
	elif [ $temp -eq 6 ]
	then
		((s++))
		if [ $s -eq 10 ]
		then
			echo di[$i]
		fi
	fi
done
#echo ${di%%:*}
#echo ${di##*:}
#echo ${di[@]}
#echo ${!di[*]}
echo $o $t $th $f $v $s

if [ $o -eq 10 ]
then
	echo "max time printed no. is 1"
elif [ $t -eq 10 ]
then
	echo "max time printed no. is 2"
elif [ $th -eq 10 ]
then
	echo "max time printed no. is 3"
elif [ $f -eq 10 ]
then
	echo "max time printed no. is 4"
elif [ $v -eq 10 ]
then
	echo "max time printed no. is 5"
elif [ $s -eq 10 ]
then
	echo "max time printed no. is 6"
fi
if [ $s -lt $v -a $s -lt $f -a $s -lt $th -a $s -lt $t -a $s -lt $o ]
then
	echo "min time printed no. is 6"
elif [ $v -lt $s -a $v -lt $f -a $v -lt $th -a $v -lt $t -a $v -lt $o ]
then
	echo "min time printed no. is 5"
elif [ $f -lt $v -a $f -lt $s -a $f -lt $th -a $f -lt $t -a $f -lt $o ]
then
	echo "min time printed no. is 4"
elif [ $th -lt $s -a $th -lt $f -a $th -lt $v -a $th -lt $t -a $th -lt $o ]
then
	echo "min time printed no. is 3"
elif [ $t -lt $v -a $t -lt $f -a $t -lt $th -a $t -lt $s -a $t -lt $o ]
then
	echo "min time printed no. is 2"
elif [ $o -lt $s -a $o -lt $f -a $o -lt $th -a $o -lt $t -a $o -lt $v ]
then
	echo "min time printed no. is 1"
fi

