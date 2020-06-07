#!/bin/bash

# 1. Add repositories [nodejs / mariadb / php]
apt-key adv --fetch-keys 'https://mariadb.org/mariadb_release_signing_key.asc'
add-apt-repository -y ppa:ondrej/php
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

# 2. Install all programms 
apt-get update
apt-get install -y git
apt-get install -y nginx
apt-get install -y software-properties-common
apt-get install -y mariadb-server mariadb-client
apt-get install -y php7.4 php7.4-cli php7.4-fpm php7.4-common php7.4-mysql php7.4-json php7.4-mbstring php7.4-xml php7.4-gd php7.4-curl
apt-get install -y php php-cli php-fpm php-common php-mysql php-json php-mbstring php-xml php-gd php-curl
apt-get install -y php7.4-opcache php7.4-readline php-zip php-pear php-bcmath
apt-get install -y nodejs
apt-get update
apt-get upgrade -y

# 3. Setting Up MariaDB
bash /vagrant_scripts/mysql_secure.sh

# 4. Setting Up Nginx
bash /vagrant_scripts/configure_nginx.sh
nginx -s reload

echo " "
echo " "
echo " "
echo "============================== Versions =============================="
echo " "
echo " "
echo " "

# 5. check versions
nginx -v # 1.17.10
echo "node version:"
node -v # 14.4.0
echo "npm version:"
npm -v # 6.14.5
mariadb -V # Ver 15.1 / Distr 10.3.22 / readline 5.2
php -v #7.4.6

echo " "
echo " "
echo " "
echo "============================== Php My admin =============================="
echo " "
echo " "
echo " "
echo "Если хочешь phpMyAdmin, зайди через ssh и запусти"
echo "sudo bash /vagrant_scripts/phpmyadmin.sh"
echo " "
echo " "
echo " "