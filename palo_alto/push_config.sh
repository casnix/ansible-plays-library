#!/bin/sh
#
# This should run all playbooks.  Only argument is the file path to the vault password file.
ansible-playbook -i inventory.txt set_tags.yml --vault-password-file $1
test $? -eq 0 || exit
ansible-playbook -i inventory.txt set_objects.yml --vault-password-file $1
test $? -eq 0 || exit
ansible-playbook -i inventory.txt set_zones.yml --vault-password-file $1
test $? -eq 0 || exit
ansible-playbook -i inventory.txt make_interface.yml --vault-password-file $1
test $? -eq 0 || exit
ansible-playbook -i inventory.txt set_security_policy.yml --vault-password-file $1
test $? -eq 0 || exit
ansible-playbook -i inventory.txt new_nat_policy.yml --vault-password-file $1
