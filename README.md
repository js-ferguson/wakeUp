# wakeUp for OLKB Planck

This is a udev rule and a bash script that will wake up your keyboard so you can use it after plugging it in, without having to either reboot or `cat /dev/hidraw`.

Put the udev rule in `/etc/udev/rules.d/`.

Make sure you either put `pollkb.sh` in `/usr/lib/udev/`, or, if you prefer another location, edit the udev rule to match the location you prefer.

Check that permissions for `99-olkb-plank.rules` and `pollkb.sh` are correct. If they are not, they can be correctly set with

```
chmod 0644 /etc/udev/rules.d/99-olkb-planck.rules
chmod 0755 /usr/lib/udev/pollkb.sh
```

To install the script and udev rule automatically in the recommended locations
with correct permissions, you may run the enclosed `install.sh` script with
root permissions:

```
sudo bash -c ./install.sh
```
