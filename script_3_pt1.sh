#!/bin/bash

sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 23 -j ACCEPT

echo "complete"