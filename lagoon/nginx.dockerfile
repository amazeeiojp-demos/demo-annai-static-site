FROM uselagoon/nginx:latest

RUN rm -f /etc/nginx/conf.d/*.conf

COPY src /app/src
COPY nginx.conf /etc/nginx/conf.d/default.conf

RUN if command -v semanage >/dev/null 2>&1; then \
        semanage fcontext -a -t httpd_sys_content_t "/app/src(/.*)?" && \
        restorecon -Rv /app/src; \
    fi

RUN chown -R 1000:1000 /app/src && \
    chmod -R 755 /app/src
