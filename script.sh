#!/bin/bash

apt update -y
apt install git ufw -y

ufw allow 22
ufw enable
ufw status

apt install nginx -y

service nginx status | grep 'enabled;' 
service ufw status |grep 'enabled;'

ufw allow 80
ufw status
