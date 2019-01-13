#!/bin/bash 

# A helper script to get the host's external facing adapter's DNS server
# This won't work in a container

EXTIF=$(ip addr | grep '^[[:blank:]]*inet[[:blank:]]' | grep -v 'lo$\|docker0$\|vbox.*$\|br-.*$' | grep 'en.*$' | xargs | rev | cut -d' ' -f1 |rev)
systemd-resolve --status $EXTIF | grep '^[[:blank:]]*DNS Servers' | xargs | cut -d':' -f2 | xargs
