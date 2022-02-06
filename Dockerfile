FROM ubuntu
RUN apt-get update
RUN apt-get install -y redis
COPY ubuntu_redis.html /var/www/html
CMD redis -g 'daemon off;

