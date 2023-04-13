#!/bin/bash

echo "Atualizando o servidor Apache..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
cd /tmp

echo "Realizando o download e transferindo os arquivos necessários da aplicação..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main/zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/