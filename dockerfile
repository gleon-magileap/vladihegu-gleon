# Filename: Dockerfile 
FROM ubuntu:18.04
RUN apt update
RUN apt install python3 -y;
RUN ls;
RUN hostname;
#RUN systemctl enable mysql
#EXPOSE 3306
CMD ["python3", "--version"]

## docker build . --tag mypython:1.3
## docker tag a1d49e84aaaf my-own-python:1.0