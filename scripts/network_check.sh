#!/bin/bash

if ! [[ "$TERM" =~ "screen".* ]]; then
  echo "You are not in a screen or tmux session."
  echo "Please execute this script from a screen or tmux session."
  echo "Stop! You shall not pass."
  exit 1
fi

source ./scripts/myenv.sh

ANSIBLE_LOG_PATH=$HOME/logs/$MYENV/$(date +%Y-%m-%d-%H%M%S)-ansible-network-check.log \
ansible-playbook -vv -i inventory/$MYENV/hosts \
main.yml
