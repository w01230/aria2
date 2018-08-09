#!/bin/sh

docker run -d \
	--restart=always \
	--name=aria2 \
	-p 6800:6800 \
	-e "SECRET=0x0000" \
	-v /nas/downloads/downloads:/data \
	aria2
