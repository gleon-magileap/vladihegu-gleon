#!/bin/bash

#crontab job to run it
#0 7 * * * sh /root/local_backup.sh > /tmp/backup_`date +\%Y\%m\%d\_\%H\%M`.log 2>&1

target_location="/backups/"

mkdir -p ${target_location}/daily/

rsync -av -q --delete /var/lib/mysql/ /backups/daily/mysql/
rsync -av -q --delete /var/www/html/ /backups/daily/html/

# daily backups
tar -czf /backups/daily_$(date +%Y%m%d%H%M).tar.gz  /backups/daily/

ls /backups/daily_* -tr | head -n -7 | xargs --no-run-if-empty rm -rf
