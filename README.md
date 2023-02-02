# wakeUp for OLKB Planck

This is a udev rule and a bash script that will wake up your keyboard so you can use it after plugging it in, without having to either reboot or `cat /dev/hidraw`.

Make sure you either put pollkb.sh in `~/code` or edit the script to match the location you prefer.

Check that permissions for `99-olkb-plank.rules` are correct.