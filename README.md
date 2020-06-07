# Vagrant LEMP Stack on Ubuntu 20.04 LTS
ubuntu 20.04 / nginx 1.17.10 / nodejs 14.4.0 / php 7.4.6 / mariadb 15.1

> Make sure about your settings and ***auto crlf***. Repository have many .sh files

## Usage:
```
vagrant up
```

#### *Helpful commands*
```bash
# nginx
sudo nginx -s reload
sudo service nginx restart

# php / db
sudo service php7.4-fpm restart
sudo mysql -u root -p  
```
