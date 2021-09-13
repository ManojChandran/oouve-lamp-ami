#!/bin/bash

echo -e "\n\nUpdating Apt Packages and upgrading latest patches\n"
sudo yum update -y

echo -e "\n\nInstalling Apache2 Web server\n"
sudo yum install apache2 apache2-doc apache2-mpm-prefork apache2-utils libexpat1 ssl-cert -y

echo -e "\n\nInstalling PHP & Requirements\n"
sudo yum install libapache2-mod-php7.0 php7.0 php7.0-common php7.0-curl php7.0-dev php7.0-gd php-pear php7.0-mcrypt php7.0-mysql -y

echo -e "\n\nInstalling MySQL\n"
sudo yum install mysql-server mysql-client -y

echo -e "\n\nPermissions for /var/www\n"
sudo usermod -a -G apache ec2-user
sudo chown -R ec2-user:apache /var/www
sudo chmod 2775 /var/www && find /var/www -type d -exec sudo chmod 2775 {} \\;
find /var/www -type f -exec sudo chmod 0664 {} \\;
echo \"<?php phpinfo(); ?>\" > /var/www/html/phpinfo.php
echo -e "\n\n Permissions have been set\n"

echo -e "\n\nEnabling Modules\n"
#sudo a2enmod rewrite
#sudo phpenmod mcrypt

echo -e "\n\nLAMP Installation Completed"

exit 0