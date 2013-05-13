#!/bin/bash

for iface in eth0, wlan0
do
  ifconfig $iface down
  /usr/bin/macchanger -A $iface
  ifconfig $iface up
done
