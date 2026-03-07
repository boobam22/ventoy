#!/bin/sh

enx=$(ip link | grep -o "enx[0-9a-f]\+")

if [ -n "$enx" ]; then
    echo "iface $enx inet dhcp" >> /etc/network/interfaces
    ifup $enx
fi
