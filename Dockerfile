FROM ubuntu
RUN apt-get update
RUN apt-get install -y redis
RUN sudo usermod -a -G docker $USER
RUN sudo chmod 777 /var/run/docker.sock
COPY ubuntu_redis.html /var/www/html
CMD redis -g 'daemon off;

