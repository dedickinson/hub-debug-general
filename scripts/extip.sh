#!/bin/bash 

# A helper script to get the host's external IP
# When run in a container, use --net=host

ip addr | grep '^[[:blank:]]*inet[[:blank:]]' | grep -v 'lo$\|docker0$\|vbox.*$\|br-.*$' | grep 'en.*$' | xargs | cut -d' ' -f2 | cut -d'/' -f1 
