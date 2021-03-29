#!/bin/bash

apt install squid -y
sleep 0.5
wget -q https://raw.githubusercontent.com/Stale-1/Squid-Open-For-All/main/squidph -O /etc/squid/squid.conf
