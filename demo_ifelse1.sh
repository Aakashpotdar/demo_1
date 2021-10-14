ran=$(( $RANDOM%2 ))

echo $ran

if [ $ran -eq 1 ]
then 
echo the em is present
else
echo the em is not present
fi
