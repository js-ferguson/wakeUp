#!/bin/bash

# this script will be called with exactly one sysfs devpath from which we
# deduce the device path
_device="/dev/$(basename $(readlink -f /sys/"${1:-EMPTY}"/*/hidraw/hidraw[0-9]*) 2>/dev/null)"

if ! [[ -c "${_device}" ]]; then
	printf "no hidraw device found for devpath: %s\n" "$1"
	exit 0
fi

printf "polling device for 1 second: %s\n" "$_device"
cat "$_device" &
_pid=$!
sleep 1
kill $_pid
