#!/bin/bash
N=`ps -C nginx --no-header|wc -l`
if [ $N -eq 0 ];then
       service nginx restart 
        sleep 1
        if [ `ps -C nginx --no-header|wc -l` -eq 0 ];then
                killall nginx
        fi
fi
