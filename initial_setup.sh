#! /usr/bin/bash

BucketName=clientname-statebackup-bucket
Region= us-east-1
Tablename=clientname-dynamodb-statelocking

if aws s3 ls "s3://$BucketName" 2>&1 | grep -q 'NoSuchBucket'
then
    aws s3api  create-bucket --bucket $BucketName --region $Region
    echo "Bucket $BucketName created successfully"
else
    echo "Bucket already exists,Please change the name of bucket which is globally unique"

fi

aws dynamodb create-table --table-name $tablename --table-class STANDARD
