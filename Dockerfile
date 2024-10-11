FROM redis:alpine

USER redis
RUN mkdir /data && chown redis:redis /data

EXPOSE 6379
CMD ["redis-server"]
