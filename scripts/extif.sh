#!/bin/bash 

# A helper script to get the host's external facing adapter
# When run in a container, use --net=host

ip addr | grep '^[[:blank:]]*inet[[:blank:]]' | grep -v 'lo$\|docker0$\|vbox.*$\|br-.*$' | grep 'en.*$' | xargs | rev | cut -d' ' -f1 |rev
