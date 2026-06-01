#!/bin/sh

echo "Running playbook ../add_acl_2088.yml"
ansible-playbook -i $1 ../add_acl_2088.yml --vault-password-file=~/.vlt.pass | tee log_add_acl_2088.20260321-0729z-5.log
echo "Generating error report"
./runErrorReport.sh ./log_add_acl_2088.20260321-0729z-5.log > errors_add_acl_2088.20260321-0729z-5.errs
echo "Generating inventory from failed tasks"
./genInvFromErr.sh ./log_add_acl_2088.20260321-0729z-5.log > inv_add_acl_2088.20260321-0729z-5.txt


