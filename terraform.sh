#! /usr/bin/bash

read -r -p  "Enter the name of the bucket:" bucketname
read -r -p  "Enter the region of the bucket:" region


aws s3api  create-bucket --bucket $bucketname --region $region

echo "AWS S3 bucket $bucketname created successfully"


