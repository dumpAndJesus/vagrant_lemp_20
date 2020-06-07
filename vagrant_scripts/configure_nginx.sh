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
cp /vagrant_scripts/api.php /usr/share/nginx/html/
echo ""
echo "==================================== End of configuring Nginx... ===================================="
echo ""