#! /usr/bin/bash

Client=$1
BucketName=$Client-statebackup-bucket
Region=us-east-1
TableName=$Client-dynamodb-statelocking
Attribute_name=LockID

if aws s3 ls "s3://$BucketName" 2>&1 | grep -q 'NoSuchBucket'
then
    aws s3api  create-bucket --bucket $BucketName --region $Region
    echo "Bucket $BucketName created successfully"
else
    echo "Bucket already exists,Please change the name of bucket which is globally unique"

fi

if aws dynamodb describe-table --table-name $TableName 2>/dev/null; then
  echo "$TableName already exists,please create with other name"
else 
  echo " Creating DynamoDB table"
  aws dynamodb create-table --table-name $TableName --attribute-definitions AttributeName=Attribute_name,AttributeType=S --key-schema AttributeName=Attribute_name,KeyType=HASH --provisioned-throughput ReadCapacityUnits=20,WriteCapacityUnits=20
fi
