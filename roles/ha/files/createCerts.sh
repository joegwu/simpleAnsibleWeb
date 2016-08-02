#!/bin/bash
cd /etc/ssl
echo -e "US\nPA\nWC\nNGC\nIS\n$(hostname)\n\n\n\n" | openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/localhost.key -out /etc/ssl/localhost.crt
cat localhost.crt localhost.key > localhost.pem

