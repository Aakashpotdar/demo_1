funcTest() {
	echo $1
	}

test=$( funcTest $((RANDOM%2)) )
echo $test
if [ $test -eq 1 ]
then
	echo "good"
else
	echo "bad"
fi
