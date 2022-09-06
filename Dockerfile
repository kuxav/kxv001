FROM alpine:latest

RUN apk add --no-cache --purge lighttpd
COPY etc/lighttpd/lighttpd/* /etc/lighttpd
COPY www /

EXPOSE 80

VOLUME ["/www", "/etc/lighttpd"]

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
