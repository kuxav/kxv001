from alpine:lastest
RUN apk add --no-cache --purge lighttpd
ENTRYPOINT ["lighttpd"]
RUN echo "this test installing lighttpd with Alpine Linux Docker"
RUN service lighttpd start
