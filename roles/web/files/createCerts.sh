#!/bin/sh

echo -e "US\nPA\nPhiladlephia'\nCOMPANY\nIS\n${HOSTNAME}\n\n"  | openssl req -new -x509 -nodes -days 3650 -out /tmp/localhost.crt -keyout /tmp/localhost.key
mv -rf /tmp/localhost.crt /etc/pki/tls/certs/
mv -rf /tmp/localhost.key /etc/pki/tls/private/


restorecon -RvF /etc/pki
restorecon -RvF /etc/ssl/certs/

