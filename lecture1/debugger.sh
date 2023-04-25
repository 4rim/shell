#!/usr/bin/env bash

inputfile=$1
count=0

while true ; do
	echo "Running $inputfile"
	./"$inputfile"
	if [[ "$?" = 1 ]]; then
		echo "Error! $inputfile was run $count times before bugging out."
		exit 1
	fi
	count=$((count+1))
done
