#!/bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando o Apache..."

apt-get install apache2 -y

echo "Instalando o Unzip..."

apt-get install unzip

echo "Baixando aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando arquivos..."
cd /tmp/linux-site-dio-main
cp * -r /var/www/html/

echo "Finalizado!"
