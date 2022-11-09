sudo apt install docker.io -y

docker ps 

docker run hello-world

docker run -it -d --name ubuntu ubuntu:16.04

docker exec -it ubuntu bash
# we do lot of s....
#install nginx

#to save the changes on a container, we create an image
docker commit 8516ed610129 my-ubuntu

docker run -it -d --name gus-ubuntu -p 8083:80 my-ubuntu
docker exec -it gus-ubuntu bash -c 'service nginx restart'


docker tag my-ubuntu 45.77.114.9:5000/ubuntu-nginx
docker push 45.77.114.9:5000/ubuntu-nginx

####################################################################################3

sudo apt install docker.io -y

echo '{"insecure-registries":["45.77.114.9:5000"]}' > /etc/docker/daemon.json
service docker restart

docker run -it -d -p 8080:80 --name my-first-container 45.77.114.9:5000/ubuntu-nginx
docker exec -it my-first-container bash -c 'service nginx restart'

######################################################################################


docker run -it -d -p 9306:3306 --name mysql -e MYSQL_ROOT_PASSWORD='root_pwd' -e MYSQL_ALLOW_EMPTY_PASSWORD='true' -e MYSQL_RANDOM_ROOT_PASSWORD='password' mysql:latest

docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest

