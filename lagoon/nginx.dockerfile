FROM uselagoon/nginx:latest

RUN mkdir -p /app/src

COPY src /app/src

RUN chown -R 1000:1000 /app/src && \
    chmod -R 755 /app/src && \
    chmod g+rx /app && \
    chmod g+rx /app/src

RUN ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log
