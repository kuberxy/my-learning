#! /bin/bash

ansible-playbook -bi inventory.ini migrate_${1:-clone_plugin}.yml
