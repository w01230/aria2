FROM alpine:latest

ENV HOME /etc/aria2 
ENV SECRET=aria2

ENV UID=1000
ENV GID=985

COPY aria2/aria2.conf /etc/aria2/
COPY aria2/aria2.session /etc/aria2/
COPY exec.sh /usr/bin/ 

VOLUME /data

RUN apk add --no-cache sudo bash aria2 shadow && \
	groupadd -g $GID aria2 && \
	adduser -S -G aria2 -u $UID aria2

EXPOSE 6800

ENTRYPOINT [ "exec.sh" ]
