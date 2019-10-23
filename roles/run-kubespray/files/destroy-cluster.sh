#!/bin/bash

cd ~/kubespray
ansible-playbook -b -i inventory/mycluster/hosts.ini ./reset.yml

rm -rf inventory/mycluster


