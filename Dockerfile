FROM debian:buster
COPY ./srcs/start.sh .
COPY ./srcs/config.inc.php ./tmp/
COPY ./srcs/nginx.conf ./tmp/
CMD bash

