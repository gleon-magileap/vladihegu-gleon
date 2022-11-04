#!/bin/bash

apt update -y
apt install git ufw -y

ufw allow 22
ufw --force enable
ufw status

apt install nginx -y

service nginx status | grep 'enabled;' 
service ufw status |grep 'enabled;'

ufw allow 80
ufw status

#curl localhost:80

cp page1.html /var/www/html/vladihegu.html

service nginx stop
apt install php -y

cp lola.php /var/www/html/lola.php