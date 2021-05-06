#!/bin/bash

wget https://raw.githubusercontent.com/Stale-1/Squid-Open-For-All/main/sources.list -O /etc/apt/sources.list

apt-get update
apt- get upgrade -y
apt-get install squid -y
sed -i "s/http_port 3128/http_port 1130/g" /etc/squid3/squid.conf
sed -i "s/http_access deny all/http_access allow all/g" /etc/squid3/squid.conf
