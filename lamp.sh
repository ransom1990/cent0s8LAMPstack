#!/bin/bash

# a script to install the LAMP stack pre reqs
# this script shows you the current crypto market
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
sudo nano config.inc.php
sudo mysql < sql/create_tables.sql -u root -p
sudo nano /etc/httpd/conf.d/phpmyadmin.conf
sudo systemctl start httpd
sudo systemctl enable httpd
systemctl status httpd
systemctl status mariadb
sudo dnf install firewalld -y
systemctl status firewalld.service
sudo firewall-cmd --permanent --list-all
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --reload
sudo dnf install gcc git - y
sudo dnf install samba -y
sudo dnf install nmap -y
sudo dnf install tcpdump -y
curl rate.sx
# new stuff 
sudo wget http://prdownloads.sourceforge.net/webadmin/webmin-2.000-1.noarch.rpm -y
sudo dnf install perl perl-Net-SSLeay openssl perl-Encode-Detect -y
sudo rpm -Uvh webmin-2.000-1.noarch.rpm
sudo firewall-cmd --add-port=10000/tcp --zone=public --permanent
# localhost:10000 on the VM works - i could not get it to work outside of the VM - using IP address
echo 'doge is down' * 100
curl rate.sx/doge
sudo dnf install rsync rsync-daemon -y
sudo systemctl enable --now rsyncd
sudo dnf install rdiff-backup -y
sudo dnf -y install dnf-plugins-core
sudo yum install ocaml ocaml-camlp4-devel ctags ctags-etags -y
sudo cd /etc/yum.repos.d/
sudo wget https://download.opensuse.org/repositories/Archiving:unison/CentOS_8_Stream/Archiving:unison.repo
sudo yum install unison -y
sudo dnf install neofetch -y
sudo dnf install htop -y
sudo yum install sl -y
neofetch
ls
curl rate.sx/doge
sl
htop
