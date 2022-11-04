#to connect
ssh -i <privkey> <user>@<ip>

#to become root
sudo su

# to check services running
service --status-all

git clone https://github.com/gleon-magileap/vladihegu-gleon.git
cd vladihegu-gleon


################
git pull 
sh script.sh
################

ps -ef |grep nginx
service nginx status
service nginx stop

#manual execution with:
/usr/sbin/nginx -g 'daemon on; master_process on;' # copied from the systemd file