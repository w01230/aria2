#!/bin/sh

sudo docker run -d \
		--restart=always \
		--name=aria2 \
		-p 6800:6800 \
		-e "SECRET=xxxxxx" \
		-v /home/jome/download:/data \
		aria2
