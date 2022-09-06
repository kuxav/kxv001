FROM alpine:3.14
RUN apk add --no-cache --purge lighttpd
COPY etc/lighttpd/lighttpd /etc/
COPY www/ /
RUN echo "Test install lighttpd with Alpine Linux Docker"
RUN service lighttpd start
