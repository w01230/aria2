#!/bin/sh

docker run -d \
	--restart=always \
	--name=aria2 \
	-p 6800:6800 \
	-p 6882:6882 \
	-e "SECRET=0x000000" \
	-v /nas/downloads:/data \
	aria2
