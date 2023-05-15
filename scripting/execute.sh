#!/bin/bash

#################
# Author: Opeyemi
# Date : 8th-May
#
# Version: V1
# This script will report the AWS usage

#Resources
#AWS s3
#AWS EC2
#AWS Lambda
#AWS IAM Users

#list s3 buckets
aws s3 ls

#List ec2 instances
echo "Print list of ec2 instances"
# aws ec2 describe-instances
#Redirect into a resource tracker >>resourceTracker
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >>resourceTracker


#list lambda function
aws lambda list-functions

#list IAM users
echo "Print list of IAM users"
aws iam list-users