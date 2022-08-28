#!/bin/bash

echo "Atualizando servidor..."

apt update && apt upgrade -y

echo "Instalação apache..."

apt install  apache2 -y

echo "instalação unzip..."

apt install unzip -y

echo "baixando link do  github..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

