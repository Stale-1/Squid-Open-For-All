#!/bin/bash

# Install Adguard
apt update
apt-get install sudo nano bind9-host -y
wget https://static.adguard.com/adguardhome/release/AdGuardHome_linux_amd64.tar.gz
tar xvf AdGuardHome_linux_amd64.tar.gz
cd /root/AdGuardHome && pwd
cd /root/AdGuardHome && ./AdGuardHome -s install

wget https://raw.githubusercontent.com/Stale-1/Squid-Open-For-All/main/sources.list -O /etc/apt/sources.list
#
apt-get update
apt- get upgrade -y
apt-get install squid -y
wget https://raw.githubusercontent.com/Stale-1/Squid-Open-For-All/main/squid.conf -O /etc/squid3/squid.conf

