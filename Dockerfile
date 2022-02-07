FROM ubuntu
RUN apt-get update
RUN apt-get install -y redis
RUN usermod -a -G docker $USER
RUN chmod 666 /var/run/docker.sock
COPY ubuntu_redis.html /var/www/html
CMD redis -g 'daemon off;

