#!/bin/sh -x

echo "enter the no."
read num

matching () {
t1=$1;
t4=0;
t3=0;
while [ $t1 -ne 0 ]
do
        t2=$(($t1 % 10));
        t4=$(($t3 + $t2));
        t3=$(($t4 * 10));
        t1=$(($t1 / 10));
done
echo $t4
}
comprg () {
        if [ $1 -eq $2 ]
        then
                echo "no. is palindrom"
        else
                echo "no. is not palindrom"
        fi
}
tem=$(matching $num)
comprg $num $tem


prime () {
for (( a1=1; a1<=$1; a1++ ))
do
                a3=$(( $1 % $a1 ))
                if [ $a3 == 0 ]
                then
                        a4=$(( $a4 + 1 ));
                fi
done

if [ $a4 == 2 ]
then
        echo "no. is prime "
else
	echo "no. is not prime "
fi
}
prime $num
