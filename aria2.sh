#!/bin/sh

docker run -d \
	--restart=always \
	--name=aria2 \
	-p 6800:6800 \
	-e "SECRET=0x000000" \
	-v /nas/download/TDDOWNLOAD:/data \
	aria2:1.0
