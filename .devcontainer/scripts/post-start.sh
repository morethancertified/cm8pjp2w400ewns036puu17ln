#!/bin/bash
set -e

echo "Starting LocalStack..."
localstack start -d

echo "Deploying CloudFormation Stack..."
awslocal cloudformation deploy \
  --stack-name mtc-stack \
  --template-file './bootstrap/lab-cfn.yaml' \
  --region us-east-1 \
  --no-cli-pager >> deploying.txt
mv deploying.txt deployed.txt
echo "CloudFormation Stack deployed."
