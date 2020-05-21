#!/bin/bash

source ~/labrc
echo
echo "Login to tower1, go to inventory and  get guid"
echo
read -p "Enter Three Tier App GUID : "  THREE_TIER_GUID

export THREE_TIER_GUID
ansible-playbook new-grade-playbook.yml 
