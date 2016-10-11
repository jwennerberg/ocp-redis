FROM docker.io/redis:latest

COPY redis-master.conf /redis-master/redis.conf
COPY redis-slave.conf /redis-slave/redis.conf
COPY run.sh /run.sh

ENTRYPOINT [ "bash", "-c" ]
CMD [ "/run.sh" ]
