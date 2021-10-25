#! /bin/bash

data_dir=/data/lib
log_dir=/data/log

data_dir_list=(
/var/lib/cloudera-manager-daemons
/var/lib/cloudera-scm-server-db 
/var/lib/cloudera-scm-agent 
/var/lib/cloudera-scm-server 
/var/lib/cloudera-host-monitor 
/var/lib/cloudera-service-monitor 
/var/lib/cloudera-scm-eventserver 
/var/lib/cloudera-scm-alertpublisher 
)

log_dir_list=(
/var/log/cloudera-manager-daemons
/var/log/cloudera-scm-server
/var/log/cloudera-manager-daemons
/var/log/cloudera-scm-agent
/var/log/cloudera-scm-firehose
/var/log/cloudera-scm-firehose
/var/log/cloudera-scm-eventserver
/var/log/cloudera-scm-alertpublisher
)

sudo mkdir -p /data/{lib,log}

for dir in ${data_dir_list[*]}
do
  [ ! -L $dir ] && \
  mv $dir ${data_dir} && \
  sudo ln -sf ${data_dir}/${dir##/var/lib/} $dir && \
  chown -h cloudera-scm: $dir
done

for dir in ${log_dir_list[*]}
do
  [ ! -L $dir ] && \
  mv $dir ${log_dir} && \
  sudo ln -sf ${log_dir}/${dir##/var/log/} $dir && \
  chown -h cloudera-scm: $dir
done
