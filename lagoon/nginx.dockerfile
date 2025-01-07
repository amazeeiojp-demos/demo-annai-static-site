FROM uselagoon/nginx:latest

RUN rm -f /etc/nginx/conf.d/*.conf

COPY src /app/src
COPY nginx.conf /etc/nginx/conf.d/default.conf

RUN chown -R 1000:1000 /app/src && \
    chmod -R 755 /app/src
