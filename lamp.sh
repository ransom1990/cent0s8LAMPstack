#!/bin/bash

# a script to install the LAMP stack pre reqs
# Alexander J Ransom 
# 9/24/2022

sudo yum install dnf
sudo dnf update -y
sudo dnf install epel-release -y
sudo dnf install httpd mariadb-server php php-cli php-json php-mbstring php-pdo php-pecl-zip php-mysqlnd -y
sudo systemctl start mariadb
sudo systemctl enable mariadb
sudo mysql_secure_installation
cd /var/www/html/
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.4/phpMyAdmin-4.9.4-all-languages.zip
sudo wget https://files.phpmyadmin.net/phpMyAdmin/4.9.4/phpMyAdmin-4.9.4-all-languages.zip
unzip phpMyAdmin-4.9.4-all-languages.zip
sudo unzip phpMyAdmin-4.9.4-all-languages.zip
sudo mv phpMyAdmin-4.9.4-all-languages phpmyadmin
chown -R apache:apache /var/www/html/phpmyadmin
sudo chown -R apache:apache /var/www/html/phpmyadmin
cd phpmyadmin/
sudo mv config.sample.inc.php config.inc.php
sudo mysql < sql/create_tables.sql -u root -p
sudo nano /etc/httpd/conf.d/phpmyadmin.conf
sudo systemctl start httpd
sudo systemctl enable httpd
sudo dnf install firewalld -y
sudo firewall-cmd --permanent --list-all
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --reload
sudo dnf install gcc git -y
sudo dnf install samba -y
sudo dnf install nmap -y
sudo dnf install tcpdump -y
curl rate.sx
cd ~
cd cent0s8LAMPstack
sudo mv webmin.repo /etc/yum.repos.d/
sudo wget http://prdownloads.sourceforge.net/webadmin/webmin-2.000-1.noarch.rpm 
sudo dnf install perl perl-Net-SSLeay openssl perl-Encode-Detect -y
sudo wget http://www.webmin.com/jcameron-key.asc
sudo rpm --import jcameron-key.asc
sudo dnf install webmin -y
sudo firewall-cmd --add-port=10000/tcp --zone=public --permanent
sudo firewall-cmd --reload
sudo dnf install rsync rsync-daemon -y
sudo systemctl enable --now rsyncd
sudo dnf install rdiff-backup -y
sudo dnf -y install dnf-plugins-core
cd ~
cd /etc/yum.repos.d/
sudo wget https://download.opensuse.org/repositories/Archiving:unison/CentOS_8_Stream/Archiving:unison.repo
sudo yum install unison -y
sudo dnf install neofetch -y
sudo yum install sl -y
sudo dnf install emacs -y
sl
