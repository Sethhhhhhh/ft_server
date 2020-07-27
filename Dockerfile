FROM debian:buster

COPY srcs/start.sh ./
COPY srcs/config.inc.php ./
COPY srcs/nginx-host-conf ./

CMD bash start.sh

EXPOSE 80 443