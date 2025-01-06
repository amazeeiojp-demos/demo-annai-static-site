FROM uselagoon/nginx:latest

COPY src /app/src

RUN chown -R 1000:1000 /app/src && \
    chmod -R 755 /app/src && \
    if command -v semanage >/dev/null 2>&1; then \
        semanage fcontext -a -t httpd_sys_content_t "/app/src(/.*)?" && \
        restorecon -Rv /app/src; \
    fi
