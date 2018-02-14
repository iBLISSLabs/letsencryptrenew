Script for renew the letsencrypt's certs

git clone https://github.com/iBLISSLabs/letsencryptrenew.git

chmod +x letsencryptrenew/certautorenew.sh

cd /usr/bin

ln -s (letsencryptrenew path)/certautorenew.sh

**Scheduling**

crontab -e

00 23  */15 * * root   /usr/bin/certautorenew.sh >> /var/log/ssl-letsencrypt-auto-renew.log


