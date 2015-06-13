#!/bin/sh

# Set for the AIX Servers

mv /var/log/httpd/access_log /var/log/httpd/access_log.`date +%Y%m%d%H%M`
mv /var/log/httpd/error_log /var/log/httpd/error_log.`date +%Y%m%d%H%M`
mv /var/log/httpd/ssl_request_log /var/log/httpd/ssl_request_log.`date +%Y%m%d%H%M`
/opt/freeware/sbin/apachectl graceful
sleep 60
gzip -9 /var/log/httpd/*_log.* 
find /var/log/httpd/ -mtime +1 -exec rm {} \;
