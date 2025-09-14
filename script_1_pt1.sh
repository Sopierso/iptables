#!/bin/bash

echo "flush"
iptables -F INPUT 
iptables -F OUTPUT
iptables -F FORWARD

echo "set"
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT

echo "complete"