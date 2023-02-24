#!/bin/sh

# remove eventually existing files
rm -f /etc/udev/rules.d/99-olkb-planck.rules /usr/lib/udev/pollkb.sh

# install udev rule and script to expected locations with proper permissions
install -D -m0644 -o0 -g0 99-olkb-planck.rules /etc/udev/rules.d/
install -D -m0755 -o0 -g0 pollkb.sh /usr/lib/udev/
