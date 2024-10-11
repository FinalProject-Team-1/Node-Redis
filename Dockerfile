FROM redis:alpine

USER root
RUN mkdir -p /usr/redis/data && chown -R redis:redis /usr/redis/data && chmod 777 /usr/redis/data
WORKDIR /usr/redis/data
USER redis

EXPOSE 6379
CMD ["redis-server", "--dir", "/usr/redis/data"]
