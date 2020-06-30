#!/bin/bash
echo ""
echo "==================================== Configuring Nginx... ===================================="
echo ""
chown www-data:www-data /usr/share/nginx/html -R
rm /etc/nginx/sites-enabled/default
cp /vagrant_scripts/nginx.conf /etc/nginx/conf.d/default.conf
rm /usr/share/nginx/html/index.html
mkdir /usr/share/nginx/html/public/
cp -avR /vagrant_scripts/public/* /usr/share/nginx/html/public/
mkdir /usr/share/nginx/html/app
cp /vagrant_scripts/index.php /usr/share/nginx/html/app/index.php
cp /vagrant_scripts/php.ini /etc/php/7.4/fpm/php.ini
echo ""
echo "==================================== End of configuring Nginx... ===================================="
echo ""