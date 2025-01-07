FROM uselagoon/nginx:latest

RUN mkdir -p /app/src

COPY src /app/src

RUN chown -R 1000:1000 /app/src && \
    chmod -R 755 /app/src && \
    chmod g+rx /app && \
    chmod g+rx /app/src
