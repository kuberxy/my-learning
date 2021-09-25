#! /bin/bash
# Program: 
#   check nginx running
# History: 
#   2019/08/22 by xiayan

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
export PATH

if [ $(ps aux | grep -w nginx | wc -l) -lt 2 ]; then
    ps aux | awk '/keepalived/{print "kill "$2}' | sudo bash
    #sudo systemctl stop keepalived.service
fi
