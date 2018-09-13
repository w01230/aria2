FROM alpine:latest

ENV HOME /etc/aria2 
ENV SECRET=aria2

ENV UID=1000
ENV GID=1000

COPY aria2 $HOME/
COPY exec.sh /usr/bin/ 

VOLUME /data

RUN apk add --no-cache sudo bash aria2 shadow && \
	groupadd -g $GID aria2 && \
	adduser -S -G aria2 -u $UID aria2 && \
	chown aria2:aria2 /data

EXPOSE 6800

ENTRYPOINT [ "exec.sh" ]
