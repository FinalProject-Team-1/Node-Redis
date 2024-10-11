FROM redis:alpine

RUN addgroup -S redis && adduser -S redis -G redis
USER redis
RUN mkdir /data && chown redis:redis /data

EXPOSE 6379
CMD ["redis-server"]
