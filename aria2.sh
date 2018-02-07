#!/bin/sh

docker run -d \
	--restart=always \
	--name=aria2c \
	-p 6801:6800 \
	-p 6882:6882 \
	-e "SECRET=0x000000" \
	-v /nas/download/TDDOWNLOAD:/data \
	aria2
