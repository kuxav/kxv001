FROM alpine:latest

RUN apk add --no-cache --purge lighttpd
COPY etc/lighttpd/* /etc/lighttpd/
COPY www /
RUN mkdir /.nahdia
COPY www /.nahida

EXPOSE 80

VOLUME ["/www", "/.nahida", "/etc/lighttpd"]

# CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
RUN lighttpd -Df /etc/lighttpd/lighttpd.conf
