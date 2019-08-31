#!/bin/bash
aws cloudformation create-stack --stack-name $1 \
--region us-west-2 --template-body file://$2 \
--capabilities CAPABILITY_IAM
