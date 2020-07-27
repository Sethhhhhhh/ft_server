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

# MySQL
service mysql start
echo "CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci" | mysql -u root
echo "GRANT ALL ON wordpress.* TO 'wordpressuser'@'localhost' IDENTIFIED BY 'password'" | mysql -u root
echo "FLUSH PRIVILEGES" | mysql -u root

# Wordpress
mkdir -p /var/www/localhost/wordpress
tar xzf wordpress.tar.gz
mv wordpress /var/www/localhost/wordpress/
rm wordpress.tar.gz
mv wp-config.php var/www/localhost/wordpress

# PHP
mkdir /var/www/localhost/phpmyadmin
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
tar xzf phpMyAdmin-4.9.0.1-all-languages.tar.gz --strip-components=1 -C /var/www/localhost/phpmyadmin
cp config.inc.php /var/www/localhost/phpmyadmin/

# Service starter
service mysql restart
service php7.3-fpm start
service nginx start
sleep infinity