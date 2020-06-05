#!/bin/bash
chown www-data:www-data /usr/share/nginx/html -R
rm /etc/nginx/sites-enabled/default
cp /vagrant/scripts/nginx_php.conf /etc/nginx/conf.d/default.conf
rm /usr/share/nginx/html/index.html
cp /vagrant/scripts/placeholder.php /usr/share/nginx/html/index.php