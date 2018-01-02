#!/bin/bash

config=/etc/aria2.conf
list=`wget -qO-  https://github.com/ngosang/trackerslist/raw/master/trackers_all.txt|awk NF|sed ":a;N;s/\n/,/g;ta"`

if [ -z `grep "bt-tracker" ${config}` ]; then
    sed -i '$a bt-tracker='${list} ${config} 
    echo add...done.
else
    sed -i "s@bt-tracker.*@bt-tracker=${list}@g" ${config} 
    echo update...done.
fi

if [ -z `grep "rpc-secret" ${config}` ]; then
    sed -i '$a rpc-secret='${SECRET} ${config} 
    echo add...done.
else
    sed -i "s@rpc-secret.*@rpc-secret=${SECRET}@g" ${config} 
    echo update...done.
fi

/usr/bin/aria2c --conf-path=/etc/aria2.conf
