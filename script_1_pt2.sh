#!/bin/bash

#change to ips being used
EXT_IF="eth0"   
INT_IF="eth1"

echo 1 > /proc/sys/net/ipv4/ip_forward

iptables -A FORWARD -i $EXT_IF -o $INT_IF -p tcp --dport 22:23 -j ACCEPT

iptables -A FORWARD -i $INT_IF -o $EXT_IF -p tcp --sport 22:23 -j ACCEPT

echo "all done"
