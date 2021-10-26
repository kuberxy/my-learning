#! /bin/bash

data_dir=/data/lib
log_dir=/data/log
dir_user="rabbitmq:"

data_dir_list=(
/var/lib/rabbitmq
)

log_dir_list=(
/var/log/rabbitmq
)

sudo mkdir -p /data/{lib,log}

for dir in ${data_dir_list[*]}
do
  [ -e $dir -a ! -L $dir ] && \
  mv $dir ${data_dir} && \
  sudo ln -sf ${data_dir}/${dir##/var/lib/} $dir && \
  chown -h $dir_user $dir
done

for dir in ${log_dir_list[*]}
do
  [ -e $dir -a ! -L $dir ] && \
  mv $dir ${log_dir} && \
  sudo ln -sf ${log_dir}/${dir##/var/log/} $dir && \
  chown -h $dir_user $dir
done

echo -n
