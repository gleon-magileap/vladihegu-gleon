# Filename: Dockerfile 
FROM ubuntu:18.04
RUN apt update
RUN apt install python -y
#RUN systemctl enable mysql
#EXPOSE 3306
CMD ["python", "--version"]
