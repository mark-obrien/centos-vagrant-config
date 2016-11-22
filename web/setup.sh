#!/usr/bin/env bash

# Use single quotes instead of double quotes to make it work with special-character passwords
PASSWORD='fas+Horse14'
PROJECTFOLDER='centos'
DATABASE='centos'

echo '--------------- Upgrade Libraries ---------------'
# sudo yum update

echo '--------------- Install Apache ---------------'
"yes" | sudo yum install httpd

echo '--------------- Install PHP & PHP Libraries ---------------'
#intall php-fpm
"yes" | sudo yum install php php-mysql php-curl php-mbstring php-gd php-imagick php-xml

echo '--------------- Install MySQL ---------------'
"yes" | sudo yum install mysql-server
sudo service mysqld start

#sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password ${PASSWORD}"
#sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password ${PASSWORD}"
#sudo apt-get -y install mysql-server

#mysql -uroot -p${PASSWORD} <<MYSQL_SCRIPT
#CREATE DATABASE $DATABASE;
#CREATE USER 'dev'@'localhost' IDENTIFIED BY '$PASSWORD';
#GRANT ALL PRIVILEGES ON $DATABASE.* TO 'dev'@'localhost';
#FLUSH PRIVILEGES;
#MYSQL_SCRIPT

echo '--------------- Add VHosts---------------'
# sudo cp /vagrant/provision/nginx/conf /etc/nginx/sites-available/$PROJECTFOLDER
# sudo chmod 644 /etc/nginx/sites-available/$PROJECTFOLDER


#install x-debug
#sudo apt-get -y install php-xdebug
#sudo cp /vagrant/provision/php/zzz_xdebug.ini /etc/php/7.0/mods-available/zzz_xdebug.ini
#sudo ln -sf /etc/php/7.0/mods-available/zzz_xdebug.ini /etc/php/7.0/fpm/conf.d/20-zzz_xdebug.ini

echo '--------------- Composer Install and Update ---------------'
# install Composer
# curl -s https://getcomposer.org/installer | php
# mv composer.phar /usr/local/bin/composer

# install composer req
# cd /var/www/cba/
# composer install
