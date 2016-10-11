FROM docker.io/redis:latest

COPY redis-master.conf /redis-master/redis.conf
COPY redis-slave.conf /redis-slave/redis.conf
COPY run.sh /run.sh

RUN mkdir /redis-master-data && \
    chown -R redis:0 /redis-master-data /redis-slave && \
    chmod -R g+rwX /redis-master-data /redis-slave

USER redis
WORKDIR /redis-master-data

ENTRYPOINT [ "bash", "-c" ]
CMD [ "/run.sh" ]
