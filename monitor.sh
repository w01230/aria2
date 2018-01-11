#!/bin/bash

config=/etc/aria2.conf
list=`wget -qO-  https://github.com/ngosang/trackerslist/raw/master/trackers_all.txt|awk NF|sed ":a;N;s/\n/,/g;ta"`

if [ -z `grep "bt-tracker" ${config}` ]; then
    sed -i '$a bt-tracker='${list} ${config} 
    echo add bt-tracker done.
else
    sed -i "s@bt-tracker.*@bt-tracker=${list}@g" ${config} 
    echo update bt-tracker done.
fi

if [ -z `grep "rpc-secret" ${config}` ]; then
    sed -i '$a rpc-secret='${SECRET} ${config} 
    echo add rpc-secret done.
else
    sed -i "s@rpc-secret.*@rpc-secret=${SECRET}@g" ${config} 
    echo update rpc-secret done.
fi

while true; 
do
    pid=`ps -ef|grep aria2c|grep -v grep|awk '{print $2}'`
    if [ -z "$pid" ]; then
        /usr/bin/aria2c --conf-path=/etc/aria2.conf
	echo "start aria2c done."
    else
        sleep 30
    fi
done
