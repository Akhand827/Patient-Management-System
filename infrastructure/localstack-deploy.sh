#!/bin/bash
set -e

# Prompt or fallback for JWT token if not exported in shell
export JWT_SECRET="${JWT_SECRET:-default_dev_jwt_secret_for_local_only}"

# Set AWS credentials for LocalStack
export AWS_ACCESS_KEY_ID="${AWS_ACCESS_KEY_ID:-test}"
export AWS_SECRET_ACCESS_KEY="${AWS_SECRET_ACCESS_KEY:-test}"
export AWS_DEFAULT_REGION="${AWS_DEFAULT_REGION:-us-east-1}"

AWS_ENDPOINT="http://localhost:4566"
TEMPLATE_PATH="./cdk.out/localstack.template.json"

aws --endpoint-url="$AWS_ENDPOINT" cloudformation delete-stack \
    --stack-name patient-management

aws --endpoint-url="$AWS_ENDPOINT" cloudformation deploy \
    --stack-name patient-management \
    --template-file "$TEMPLATE_PATH"

aws --endpoint-url="$AWS_ENDPOINT" elbv2 describe-load-balancers \
    --query "LoadBalancers[0].DNSName" \
    --output text