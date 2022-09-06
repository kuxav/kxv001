FROM alpine:3.14

RUN apk add --no-cache --purge lighttpd
COPY etc/lighttpd/lighttpd /etc/
COPY www/ /
RUN chown 1000:1000 -R /www

CMD ["lighttpd", "-Df", "/etc/lighttpd/lighttpd.conf"]
