#!/bin/bash

playbooks=("mongodb" "mysql" "redis" "catalogue" "user" "cart" "shipping" "payment" "frontend" "rabbitmq")

set -e

for playbook in "${playbooks[@]}"
do
    echo "Running $playbook playbook..."

    ansible-playbook -i inventory.ini \
        -e "ansible_user=ec2-user" \
        -e "ansible_password=DevOps321" \
        "$playbook.yaml"

    sleep 10
done
