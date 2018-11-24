#!/bin/sh

docker run -d \
	--restart=always \
	--name=aria2 \
	-p 6800:6800 \
	-e "SECRET=0x0000" \
	-e "UID=1000" \
	-e "GID=985" \
	-v /nas/downloads:/data \
	aria2
