#! /bin/bash

ansible-playbook -bi inventory.ini del_node.yml -l node4,alpha4_1
