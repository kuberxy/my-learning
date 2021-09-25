#! /bin/bash
# Program: 
#   check proxysql running
# History: 
#   2019/09/02 by xiayan

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/opt/redis/bin/
export PATH

if [ $(ps aux | grep -w proxysql.cnf | wc -l) -lt 2 ];then
     systemctl stop keepalived.service
fi
