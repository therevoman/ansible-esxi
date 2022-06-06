#!/bin/bash
# to store (-l is the label, mb will be different later):
#   security add-generic-password -a all -D "Ansible Vault" -s "ansible_vault" -l "pass-kind" -w 'pass-here!'
# ansible allows to prompt for data (to stdout) and have different passwords here
#security find-generic-password -s "ansible_vault" -l "esxi" -w
#
# Changing to keybase 
# to store value use this command:
#   keybase kvstore api -m '{"method": "put", "params": {"options": {"namespace": "esxi", "entryKey": "password", "entryValue": "mypassword"}}}'
#

keybase kvstore api -m '{"method": "get", "params": {"options": {"namespace": "esxi", "entryKey": "password"}}}' | jq -r '.result.entryValue'

