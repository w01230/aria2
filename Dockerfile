FROM alpine:latest

ENV SECRET=xxxxxx

RUN apk add --no-cache bash aria2 && \
	chown nobody:nobody /usr/bin/aria2c

COPY aria2/aria2.* /etc/
COPY monitor.sh /usr/bin/

VOLUME /data
EXPOSE 6800

ENTRYPOINT [ "monitor.sh" ]

