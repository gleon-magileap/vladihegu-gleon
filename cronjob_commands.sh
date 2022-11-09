# cron is a scheduler on linux

#examples:

* * * * * service mysql status|grep 'Active: active' || echo 'run script to send notificaton'
* * * * * sh /root/update-git.sh

crontab -l # to list
crontab -e # to edit