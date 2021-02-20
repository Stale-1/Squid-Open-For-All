#!/bin/bash
apt update
apt install squid -y
sleep 0.5
systemctl enable squid
sleep 0.5
wget -q https://raw.githubusercontent.com/Stale-1/Squid-Open-For-All/main/squid.conf -O /etc/squid/squid.conf
sleep 0.5
systemctl squid restart
clear
echo "Squid is now running on port 1130"
echo "To change the port edit the port in configuration file using nano"
echo "The configuration file is at /etc/squid/squid.conf"
