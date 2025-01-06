FROM uselagoon/nginx:latest

COPY src /app/src

RUN chown -R nginx:nginx /app/src && \
    chmod -R 755 /app/src
