FROM alpine:3.14

RUN apk add --no-cache --purge lighttpd
COPY etc/lighttpd/lighttpd /etc/
COPY www/ /

CMD ["lighttpd", "-Df", "/etc/lighttpd/lighttpd.conf"]
