# Package installation
apt-get update && apt-get full-upgrade -y
apt-get install wget -y
apt-get install nginx -y
apt-get install -y openssl
apt-get install -y mariadb-server mariadb-client
apt-get install -y php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline
apt-get install -y php-mbstring php-zip php-gd
apt-get install -y php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip

# Access
chown -R www-data /var/www/*
chmod -R 755 /var/www/*

# SSL
mkdir /etc/nginx/ssl
openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/localhost.pem -keyout /etc/nginx/ssl/localhost.key -subj "/C=FR/ST=Paris/L=Paris/O=42 Paris/OU=seth/CN=localhost"

# NGINX
mkdir -p var/www/localhost
mv ./nginx-host-conf /etc/nginx/sites-available/.
ln -s /etc/nginx/sites-available/nginx-host-conf /etc/nginx/sites-enabled

# PHP
mkdir /var/www/localhost/phpmyadmin
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
tar -zxvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
mv phpMyAdmin-4.9.0.1-all-languages /var/www/localhost/phpmyadmin/.
mv ./config.inc.php /var/www/localhost/phpmyadmin/.
chmod 660 /var/www/localhost/phpmyadmin/config.inc.php
chown -R www-data:www-data /var/www/localhost/phpmyadmin
service php7.3-fpm start

service nginx start
service php7.3-fpm restart
sleep infinity