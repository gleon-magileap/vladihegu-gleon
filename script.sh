#!/bin/bash

apt update -y
apt install git ufw -y

ufw allow 22
ufw enable
ufw status


