FROM redis:alpine

USER root
RUN mkdir -p /data && chown -R redis:redis /data && chmod 777 /data
USER redis

EXPOSE 6379
CMD ["redis-server"]
