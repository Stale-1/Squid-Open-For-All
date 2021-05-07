#!/bin/bash

wget https://raw.githubusercontent.com/Stale-1/Squid-Open-For-All/main/sources.list -O /etc/apt/sources.list
#
apt-get update
apt- get upgrade -y
apt-get install squid -y
wget https://raw.githubusercontent.com/Stale-1/Squid-Open-For-All/main/squid.conf -O /etc/squid3/squid.conf

