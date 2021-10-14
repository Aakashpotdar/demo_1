#!bin/sh -x
r=$((($RANDOM%90)+10))
a=$((($RANDOM%90)+10))
s=$((($RANDOM%90)+10))
q=$((($RANDOM%90)+10))
w=$((($RANDOM%90)+10))

x=5


sum=$(($r + $s + $a + $q + $w))

av=$(($sum / $x))
echo $r $a $s $q $w
echo $av
