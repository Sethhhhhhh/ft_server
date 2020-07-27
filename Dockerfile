FROM debian:buster

RUN apt-get update && apt-get full-upgrade -yq && \
                apt-get install -y wget && \
                apt-get install -y nginx && \
                apt-get install -y openssl && \
                apt-get install -y mariadb-server && \
                apt-get install -y php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline && \
                apt-get install -y php-mbstring php-zip php-gd && \
                apt-get install -y php-mysql

COPY srcs/start.sh ./
COPY srcs/config.inc.php ./
COPY srcs/nginx-host-conf ./
COPY srcs/wordpress.tar.gz ./
COPY srcs/wp-config.php ./

CMD bash start.sh

EXPOSE 80 443