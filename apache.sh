#!/bin/bash
apt-get update
apt-get install apache2 mysql-server libapache2-mod-auth-mysql php5-mysql -y
mysql_secure_installation
apt-get install php5 libapache2-mod-php5 php5-mcrypt -y
cd /var/www/html
wget https://github.com/joomla/joomla-cms/releases/download/3.4.3/Joomla_3.4.3-Stable-Full_Package.zip
unzip Joomla*
mv htaccess.txt .htaccess
mysql -u root -predhat -e "CREATE USER joomla@\'localhost\' IDENTIFIED BY \'joomla\'"
mysql -u root -predhat -e "GRANT ALL PRIVILEGES ON * . * TO joomla@\'localhost\'"
mysql -u root -p redhat -e "flush privileges"
mysql -u root -p redhat -e "create database joomla"



