#!/bin/sh -x

partT=1;
fullT=2;
totalS=0;
maxHrsInMonth=40
empRateHr=20;
numWorkDays=20;

totalWorkHrs=0;
totalWorkDays=0;

getWorkingHrs() {
		case $1 in
			$fullT)
				workHrs=8;;
			$partT)
				workHrs=4;;
			*)
				workHrs=0;;
		esac
		echo $workHrs
}
while [[ $totalWorkHrs -lt $maxHrsInMonth && $totalWorkDays -lt $numWorkDays ]]
do
	totalWorkDays=$(($totalWorkDays + 1));
	workHrs="$( getWorkingHrs $((RANDOM%3)) )";
	 totalWorkHrs=$(($totalWorkHrs + $workHrs));
done

totalSalary=$(( $totalWorkHrs * $empRateHr ));
echo $totalSalary
# useCase_practice
# useCase_practice
