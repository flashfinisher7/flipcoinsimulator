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
