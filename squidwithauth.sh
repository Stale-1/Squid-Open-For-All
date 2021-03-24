#!/bin/bash

apt install squid -y
apt install apache2-utils -y
touch /etc/squid/passwd
chown proxy: etc/squid/passwd
wget -q https://raw.githubusercontent.com/Stale-1/Squid-Open-For-All/main/squidwithauth -O /etc/squid/squid.conf
htpasswd /etc/squid/passwd newuser
service squid restart
