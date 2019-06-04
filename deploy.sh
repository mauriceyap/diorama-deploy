#!/bin/sh
IP_ADDRESS=$1
USER_ACCOUNT=$2

echo $IP_ADDRESS ansible_connection=ssh ansible_ssh_user=$USER_ACCOUNT ansible_python_interpreter=/usr/bin/python3 > inventory

~/.local/bin/ansible-playbook -i inventory -v -e "linux_user=$USER_ACCOUNT" playbook.yml
