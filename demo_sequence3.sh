#!bin/sh -x

echo "enter the no. in feet x feet"
read f1 f2
a=10764

m=$((1000 * $f1 * $f2 / $a))
echo "sq feet to sq meters is $m"

ac=$(($m * 25 / 4047))

echo "in acres $ac"
