#!/bin/bash

lepath="/usr/bin/letsencrypt"; #Change Letsencrypt path
email="email@example.com"; #Change email
domain="$(/bin/hostname)"; #Change domain
webservice="nginx"; #Change the webserver

# Update the cert
echo "Starting renewal script..."
$le_path certonly -n --renew-by-default --nginx --agree-tos -m "$email" -d "$domain"

# Reload nginx
echo "Reloading $web_service"
/usr/sbin/service $webservice reload
