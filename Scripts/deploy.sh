#!/bin/bash
ARTIFACT_BUCKET=${cat bucket-name.txt}
aws cloudformation package --template-file Cloudformation\template.yaml --s3-bucket $ARTIFACT_BUCKET --output-template-file template.yml
aws cloudformation deploy --template-file template.yml --stack-name lambda-sample --capabilities CAPABILITY_NAMED_IAM