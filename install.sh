#!/bin/bash

set -e

if ! [ -x "$(command -v ansible)" ]; then
  sudo apt install ansible
fi

ansible-playbook ~/Documents/Development/dotfiles-automation/bootstrap.yml --ask-become-pass 
