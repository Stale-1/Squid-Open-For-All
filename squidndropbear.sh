#!/bin/bash
apt update && apt upgrade -y && apt install dropbear -y
sleep 1
sed -i "s/PORT=22/PORT=443/g" /etc/default/dropbear
/etc/init.d/dropbear restart
systemctl enable dropbear
apt install squid -y
sed -i "s/http_port 3128/http_port 80/g" /etc/squid/squid.conf
sed -i "s/http_access deny all/http_access allow all/g" /etc/squid/squid.conf
/etc/init.d/squid restart
systemctl enable squid
