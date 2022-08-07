#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/Aurineque/inicio-de-html-css/archive/refs/heads/master.zip
unzip master.zip
cd inicio-de-html-css-master
cd inicio_html_css
cp -R * /var/www/html/

