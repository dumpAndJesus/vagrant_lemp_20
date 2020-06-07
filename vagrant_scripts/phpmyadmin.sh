#!/bin/bash

echo " "
echo " "
echo " "
echo "Сейчас тебе будет показано несколько окон"
echo "1. При выборе apache2 / lighttpd не выбирай ничего, просто tab > ok"
echo "2. Согласись скофигурировать базу > Yes"
echo "3. Придумай пароль, это будет пароль от phpmyadmin"
echo "3.1 Если оставишь пустым, то сгенерит рандомный"
echo "Нажми Enter для продолжения"

read x

apt install -y phpmyadmin
chmod 775 -R /usr/share/phpmyadmin/
chown root:www-data -R /usr/share/phpmyadmin/
nginx -s reload

echo " "
echo " "
echo " "
echo "phpmyadmin доступен по http://_ip_/phpmyadmin"
echo "дефолтный ip: 192.168.100.10, если ты не перенастраивал"
echo "Логин от phpmyadmin: phpmyadmin"
echo "Пароль ты вводил сам, если не вводил, то он сгенерил рандомный"
echo " "
echo " "
echo " "