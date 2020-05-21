#!/bin/bash

source ~/labrc
echo
echo "Login to tower1, go to inventory and  get guid"
echo
read -p "Enter Three Tier App GUID : "  THREE_TIER_GUID
export THREE_TIER_GUID

cat > ~/grade_result.txt <<EOF
*******************************
    Grade Result
*******************************
Tower's GUID: ${TOWER_GUID}
OSP's GUID: ${OSP_GUID}
3Tier App's GUID: ${THREE_TIER_GUID}
*******************************

EOF

ansible-playbook new-grade-playbook.yml 


cat >> ~/grade_result.txt <<EOF

*******************************

EOF
