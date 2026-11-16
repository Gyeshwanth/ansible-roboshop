#!/bin/bash

playsbooks= ("mongodb" "mysql" "redis" "rabbitmq" "catalogue" "user" "cart" "shipping" "payment" "frontend")


for playbook  in '$@'
do
ansible-playbook -i inventory.ini -e ansible_user=ec2-user -e ansible_password=DevOps321 $playbook.yaml
sleep 10
done