apt-get update && full-upgrade -yq
mkdir /var/www/nginx/
chmod -R 755 /var/www/*
mv /tmp/nginx.conf /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/

# Install wget, mysql && nginx
apt-get install wget -yq
apt-get install nginx -yq
apt-get install default-mysql-server -yq

#SSL
apt install -y openssl
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout localhost.key -out localhost.crt
mv localhost.crt /etc/ssl/certs/
mv localhost.key /etc/ssl/private/

#Install php
apt install -y php7.3-fpm php7.3-mysql
service php7.3-fpm start

#Install wordpress
wget -c https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz
mv wordpress/ /var/www/nginx/


service nginx start
