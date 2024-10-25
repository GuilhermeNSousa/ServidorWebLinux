#!bin/bash

echo "Atualizando o sistema"

apt update
apt upgrade

echo "Instalando o Servidor Web Apache"

apt install apache2 -y

echo "Instalando o Unzip"

apt install unzip

echo "Baixando a aplicacao"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Movendo a aplicacao para o diretório do Apache"

cd linux-site-dio-main
cp * /var/www/html -r


