#!/bin/bash

vendor_product="hiddev[0-9]+"

while read -r line; do
	if [[ $line =~ $vendor_product || $line =~ $vendor_product_alt ]]; then
		if [[ $line =~ hidraw([0-9]+): ]]; then
			hidraw_device=${BASH_REMATCH[1]}
			echo "hidraw device found at number $hidraw_device"

			device="/dev/hidraw$hidraw_device"
			duration=1

			(cat $device &)
			pid=$!

			echo "Reading from $device for $duration seconds..."
			sleep $duration

			echo "Killing cat... REOWW"
			kill $pid
			break
		else
			echo "Could not extract hidraw device number from line."
			break
		fi
	else
		echo "Could not find vendor product"	
	fi
done < <(dmesg | tac)
