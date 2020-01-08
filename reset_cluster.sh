#!/bin/bash

echo "REMOVE CONTAINERS"
sed -i 's@node_state=started@node_state=absent@g' ./inventory.cfg
echo "sed to state absent"
sudo ansible-playbook provision_lxd_infra.yml
echo "RECREATES CONTAINERS"
sed -i 's@node_state=absent@node_state=started@g' ./inventory.cfg
echo "sed to state present"
sudo ansible-playbook provision_lxd_infra.yml