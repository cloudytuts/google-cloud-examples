#! /bin/bash
# Update installed packages and install LAMP packages
sudo apt update
sudo apt upgrade -y
sudo apt install -y php php-mysql php-gd php-xml mysql-server apache2

# Download and install WordPress
wget https://wordpress.org/latest.tar.gz
tar xvf latest.tar.gz -C /var/www/html