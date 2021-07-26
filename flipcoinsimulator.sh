#!/bin/bash -x
echo "this is a flip coin simulator program"

function flipCoin()
{
	randomCheck=$((RANDOM%2))
	if [ $randomCheck -eq 0 ]
	then
		echo "HEAD"
	else
		echo "TAIL"
	fi
}


declare -A singlets
declare -A  winingCombination
isHead="HEAD"
read -p "Enter number of times to flip the coin " n;
for (( i=0;i<n;i++ ))
do
	result="$( flipCoin )"
	singlets[$i]=$result;
	if [ "$result" == "$isHead" ]
	then
		heads=$((heads+1));
	else
		tails=$((tails+1));
	fi
done
echo "Generated Singlets:"
echo ${singlets[@]};
echo "Percentage of Singlets";
echo "Percentage of Heads:= $((heads*100/n))";
echo "Percentage of Tails:= $((tails*100/n))";
winingCombination[H]=$((heads*100/n))
winingCombination[T]=$((tails*100/n))
