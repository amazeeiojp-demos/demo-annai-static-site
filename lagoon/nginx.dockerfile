FROM uselagoon/nginx:latest

COPY src /app/src

RUN chown -R 1000:1000 /app/src && \
    chmod -R 755 /app/src
