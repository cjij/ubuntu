#!/bin/bash
# sudo cp chmac.sh /etc/init.d/chmac
# sudo update-rc.d chmac defaults 10

for iface in eth0 wlan0
do
  ifconfig $iface down
  /usr/bin/macchanger -A $iface
  ifconfig $iface up
done
