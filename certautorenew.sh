#!/bin/bash
# Source: https://gist.github.com/oodavid/54cadfb92ff49618797d

lepath="/usr/bin/letsencrypt"; #Change Letsencrypt path
email="email@example.com"; #Change email
domain="$(/bin/hostname)"; #Change domain
web_service="nginx"; #Change the webserver

# Update the cert
echo "Starting renewal script..."
$le_path certonly -n --renew-by-default --nginx --agree-tos -m "$email" -d "$domain"

# Reload nginx
echo "Reloading $web_service"
/usr/sbin/service $web_service reload
