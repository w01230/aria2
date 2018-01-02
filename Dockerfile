FROM alpine:latest

ENV SECRET=0x010203

RUN apk add --no-cache bash aria2

COPY aria2/aria2.* /etc/
COPY start.sh /usr/bin/

VOLUME /data
EXPOSE 6800

ENTRYPOINT [ "/usr/bin/start.sh" ]

