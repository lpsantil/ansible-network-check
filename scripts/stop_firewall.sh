#!/bin/bash

source ./scripts/myenv.sh

ANSIBLE_LOG_PATH=$HOME/logs/$MYENV/$(date +%Y-%m-%d-%H%M%S)-stop_firewall.log \
ansible-playbook -vv -i inventory/$MYENV/hosts \
stop_firewall.yml
