#!/bin/sh

echo ">> Bringing up Ethernet with DHCP"
ifconfig eth0 up
udhcpc -i eth0
