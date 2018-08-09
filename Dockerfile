FROM alpine:latest

ENV HOME /etc/aria2 
ENV SECRET=aria2

ARG USER=aria2
ARG UID=1000
ARG GROUP=$USER

COPY aria2 $HOME/
COPY exec.sh /usr/bin/ 

RUN apk add --no-cache bash aria2 && \
	adduser -S -G $GROUP -u $UID $USER && \
	chown $USER:$GROUP /usr/bin/aria2c && \
	chown $USER:$GROUP /usr/bin/exec.sh && \
	chown -R $USER:$GROUP $HOME 

USER $USER

VOLUME /data
EXPOSE 6800


ENTRYPOINT [ "exec.sh" ]

