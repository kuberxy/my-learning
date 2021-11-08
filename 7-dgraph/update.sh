#! /bin/bash

ansible-playbook -bi inventory.ini update.yml --tags $1
